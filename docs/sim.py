# ─── Stamina model ────────────────────────────────────────────────────────────
MAX_STAM             = 2520    # 42h max stamina in minutes
GREEN_THRESH         = 2340    # 39h — 1.5x bonus
ORANGE_THRESH        = 840     # 14h — 0.5x penalty
HUNT_DRAIN_PER_MIN   = 1.0     # 1 min stamina per min of hunting (time-based)
PVP_DRAIN_PER_KILL   = 5       # 5 min stamina per PvP kill
REGEN_PER_MIN_OFFLN  = 0.5     # 30 min/hour offline (premium regen)

def stam_mult(s):
    if s >= GREEN_THRESH: return 1.5
    elif s >= ORANGE_THRESH: return 1.0
    else: return 0.5

# ─── Formula config ───────────────────────────────────────────────────────────
TIER_OVERHEAD  = 1.10    # monsters are always OVERHEAD × reference
                         # top player at tier=1.0: ratio = 1.10, gap = 0.10×ref
                         # adjusting this tunes the floor reward for top players

GAP_FRAC       = 0.000011
RATIO_POW      = 0.7
COST_FACTOR    = 200.0 / 3
PVP_GAP_FRAC   = 0.008
PVP_RAT_POW    = 0.7
PVP_BASE_POOL  = 10667

# ─── Hunt stamina (second bar) ───────────────────────────────────────────────
MAX_HSTAM      = 10000
DRAIN_BASE     = 0.1
PVP_GRANT_BASE = 100
MAX_PVP_GRANT  = 1000
IDLE_PTS_HR    = 100

PVP_THRESHOLD  = 50_000
HUNT_KPM       = 50

# (name, tier_frac, base_xml_exp)
# base_xml_exp = training-wheels floor only. Carries players until the formula's
# growing gap overtakes it (~level 2M). Calibrated so that top-tier grinding
# reaches level 1M after ~30 days (ODE: L² = 90×B×t → B≈370M for Xynex).
# Scales as tier² × 370M so each tier is proportionally appropriate.
TIERS = [
    ('cyclops',         0.01,     37_000),
    ('dragon',          0.07,  1_813_000),
    ('hydra',           0.13,  6_253_000),
    ('war golem',       0.20, 14_800_000),
    ('mutated gang',    0.26, 25_012_000),
    ('mutated rat',     0.32, 37_888_000),
    ('golem boss',      0.38, 53_428_000),
    ('skeleton knight', 0.44, 71_632_000),
    ('hercules',        0.50, 92_500_000),
    ('dragonel',        0.56,116_032_000),
    ('angry dragonel',  0.62,142_228_000),
    ('frost dragonel',  0.68,171_088_000),
    ('barbarian rouge', 0.74,202_612_000),
    ('undead snake',    0.80,236_800_000),
    ('pirazo',          0.85,267_325_000),
    ('blue djenius',    0.91,306_397_000),
    ('wizardino',       0.97,348_133_000),
    ('xynex',           1.00,370_000_000),
]
TIER_BASE_EXP = {name: base for name, _, base in TIERS}

# ─── Formula ──────────────────────────────────────────────────────────────────
def hunt_lv(pl, ref, tier_frac, sm, hs_eff=1.0, base_exp=0):
    """Levels per kill. Floor = monster's own base XML exp converted to levels."""
    tl      = tier_frac * max(1.0, ref) * TIER_OVERHEAD
    gap     = max(0.0, tl - pl)
    ratio   = tl / max(1.0, pl)
    lvs     = gap * GAP_FRAC * ratio**RATIO_POW
    formula = lvs * sm * hs_eff
    floor_lv = (base_exp / (COST_FACTOR * max(1.0, pl))) * sm * hs_eff
    return max(floor_lv, formula)

def pvp_lv(atk, vic, sm):
    gap = max(0.0, vic - atk)
    r   = vic / max(1.0, atk)
    gl  = gap * PVP_GAP_FRAC * r**PVP_RAT_POW
    bl  = vic * PVP_BASE_POOL * (3.0/200.0) / atk
    return (gl + bl) * sm

def h_eff(pts):
    if pts >= 5000: return 1.00
    elif pts >= 2000: return 0.75
    elif pts >= 500: return 0.50
    else: return 0.25

def h_drain(pl, ref):
    return max(0.0001, DRAIN_BASE * min(1.0, pl / max(1.0, ref)))

def pvp_hs_restore(r):
    return min(MAX_PVP_GRANT, r * PVP_GRANT_BASE)

def catchup_kill(pl, ref):
    raw = ref / max(1.0, pl)
    prog = pl / max(1.0, ref * 0.85)
    cu = 1.0 + (raw - 1.0) * max(0.0, 1.0 - prog)
    return 500.0 * cu * 1.5 / max(1.0, COST_FACTOR * pl)

def best_tier(pl, ref, sm=1.0, hs_eff=1.0):
    """Return (tier_frac, base_exp) for whichever tiered monster gives the most exp."""
    best_lv, best_tf, best_be = -1, 1.0, 0
    for _, tf, be in TIERS:
        lv = hunt_lv(pl, ref, tf, sm, hs_eff, be)
        if lv > best_lv:
            best_lv, best_tf, best_be = lv, tf, be
    return best_tf, best_be

# ─────────────────────────────────────────────────────────────────────────────
# SECTION 0: What TIER_OVERHEAD means — formula demo at key scenarios
# ─────────────────────────────────────────────────────────────────────────────
print("=" * 80)
print(f"  TIER_OVERHEAD = {TIER_OVERHEAD}  (no BASE_LEVELS — overhead IS the floor)")
print(f"  Formula: tierLevel = expTier x ref x {TIER_OVERHEAD}")
print(f"           levelsGained = gap x {GAP_FRAC} x ratio^{RATIO_POW}")
print("=" * 80)
print()
print(f"  {'Scenario':>30} | {'tierLv':>10} | {'gap':>10} | {'ratio':>6} | {'lv/kill':>8} | {'lv/kill (1.5x)':>15}")
print("  " + "-" * 90)

REF = 17_944_000.0
cases = [
    ("Top player   (ref=17.9M)",   REF,       1.0),
    ("75% of ref   (13.5M)",       REF*0.75,  1.0),
    ("50% of ref   (8.97M)",       REF*0.50,  1.0),
    ("33% — user   (5.86M)",       5_864_000, 1.0),
    ("20% of ref   (3.59M)",       REF*0.20,  1.0),
    ("110% of ref  (above top)",   REF*1.10,  1.0),
    ("120% of ref  (way above)",   REF*1.20,  1.0),
]
for label, pl, tf in cases:
    tl    = tf * REF * TIER_OVERHEAD
    gap   = max(0.0, tl - pl)
    ratio = tl / max(1.0, pl)
    lv    = hunt_lv(pl, REF, tf, 1.0)
    lv15  = hunt_lv(pl, REF, tf, 1.5)
    print(f"  {label:>30} | {tl/1e6:>9.3f}M | {gap/1e6:>9.3f}M | {ratio:>6.3f} | {lv:>8.3f} | {lv15:>15.3f}")

# ─────────────────────────────────────────────────────────────────────────────
# SECTION 1: Stamina lifecycle — effective daily hunting window
# ─────────────────────────────────────────────────────────────────────────────
print()
print("=" * 80)
print("  SECTION 1: Normal stamina — max sustainable green hunting per day")
print("  PvP drains 5 min/kill.  Regen = 30 min/h offline (premium).")
print("=" * 80)
print()

def calc_stam_profile(hunt_hrs, pvp_k=133):
    stam = float(MAX_STAM)
    total = {'G':0.0,'N':0.0,'O':0.0}
    for day in range(30):
        stam = max(0.0, stam - pvp_k * PVP_DRAIN_PER_KILL)
        hunt_rem = hunt_hrs * 60
        for h in range(22):
            if hunt_rem > 0:
                step = min(60.0, hunt_rem)
                z = 'G' if stam >= GREEN_THRESH else ('O' if stam < ORANGE_THRESH else 'N')
                total[z] += step / 60
                stam = max(0.0, stam - step * HUNT_DRAIN_PER_MIN)
                hunt_rem -= step
            else:
                stam = min(MAX_STAM, stam + 60 * REGEN_PER_MIN_OFFLN)
    return total

print(f"  {'Hunt h/day':>10} | {'Green h':>9} | {'Normal h':>9} | {'Orange h':>9} | {'Net stam/day':>14} | {'Day stam runs out':>18}")
print("  " + "-" * 80)
for hh in [0.5, 1.0, 1.5, 2.0, 3.0]:
    t = calc_stam_profile(hh)
    pvp_drain = 133 * PVP_DRAIN_PER_KILL
    hunt_drain = hh * 60
    offline_hrs = 24 - 2 - hh
    regen = offline_hrs * 60 * REGEN_PER_MIN_OFFLN
    net = regen - pvp_drain - hunt_drain
    if net >= 0:
        runs_out = "never"
    else:
        runs_out = f"day {MAX_STAM/(-net):.0f}"
    print(f"  {hh:>10.1f} | {t['G']:>9.1f} | {t['N']:>9.1f} | {t['O']:>9.1f} | {net:>+14.0f} | {runs_out:>18}")

# ─────────────────────────────────────────────────────────────────────────────
# SECTION 2: TIER_OVERHEAD calibration — reference after 30d
# ─────────────────────────────────────────────────────────────────────────────
print()
print("=" * 80)
print("  SECTION 2: TIER_OVERHEAD calibration — ref after 30 days (1h hunt/day)")
print("  Target: reference reaches ~1M after 1 month on fresh server")
print("=" * 80)
print()

def sim_30d_top(overhead, hunt_hrs=1.0, pvp_k=133):
    pl = 1000.0; stam = float(MAX_STAM); hs = float(MAX_HSTAM)
    for _ in range(30):
        stam = max(0.0, stam - pvp_k * PVP_DRAIN_PER_KILL)
        for m in range(int(hunt_hrs * 60)):
            sm  = stam_mult(stam)
            hse = h_eff(hs)
            # Use overhead to compute tier level directly for the top tier (tf=1.0)
            tl  = 1.0 * max(1.0, pl) * overhead
            gap = max(0.0, tl - pl)
            rat = tl / max(1.0, pl)
            be  = TIERS[-1][2]  # xynex base_exp (top tier floor)
            lv  = max(gap * GAP_FRAC * rat**RATIO_POW, be / (COST_FACTOR * max(1.0, pl)))
            lv *= sm * hse
            pl += HUNT_KPM * lv
            stam = max(0.0, stam - HUNT_DRAIN_PER_MIN)
            hs   = max(0.0, hs - HUNT_KPM * h_drain(pl, pl))
        if pl >= PVP_THRESHOLD:
            sm  = stam_mult(stam)
            pl += pvp_k * pvp_lv(pl, pl, sm)
            hs  = min(MAX_HSTAM, hs + pvp_k * pvp_hs_restore(1.0))
        offline_mins = (24 - 2 - hunt_hrs) * 60
        stam = min(MAX_STAM, stam + offline_mins * REGEN_PER_MIN_OFFLN)
        hs   = min(MAX_HSTAM, hs + 2 * IDLE_PTS_HR)
    return pl

print(f"  {'OVERHEAD':>9} | {'Ref after 30d':>14} | Note")
print("  " + "-" * 50)
for ov in [1.02, 1.05, 1.08, 1.10, 1.15, 1.20, 1.30, 1.50]:
    r = sim_30d_top(ov)
    note = "<-- ~1M target" if 800_000 <= r <= 1_400_000 else ""
    print(f"  {ov:>9.2f} | {r/1e6:>13.3f}M | {note}")

# ─────────────────────────────────────────────────────────────────────────────
# SECTION 3: Fresh server 70-day simulation (P1–P5, each joining 1 week apart)
# ─────────────────────────────────────────────────────────────────────────────
print()
print("=" * 80)
print(f"  SECTION 3: Fresh server — P1=week0  P2=week1  P3=week2  P4=week3  P5=week4")
print(f"  TIER_OVERHEAD={TIER_OVERHEAD}, 1h hunt/day, 133 PvP kills/day (after 50k)")
print(f"  Normal stamina drain included. [G]=green [N]=normal [O]=orange")
print("=" * 80)
print()

def sim_day(pl, stam, hs, ref, pvp_k, hunt_hrs=1.0):
    stam = max(0.0, stam - pvp_k * PVP_DRAIN_PER_KILL)
    hl = 0.0
    for _ in range(int(hunt_hrs * 60)):
        sm  = stam_mult(stam)
        hse = h_eff(hs)
        tf, be = best_tier(pl, ref, sm, hse)
        lv  = hunt_lv(pl, ref, tf, sm, hse, be)
        pl += HUNT_KPM * lv
        hl += HUNT_KPM * lv
        stam = max(0.0, stam - HUNT_DRAIN_PER_MIN)
        hs   = max(0.0, hs - HUNT_KPM * h_drain(pl, ref))
    pvl = 0.0
    if pl >= PVP_THRESHOLD and pvp_k > 0:
        sm  = stam_mult(stam)
        pvl = pvp_k * pvp_lv(pl, pl, sm)
        pl += pvl
        hs  = min(MAX_HSTAM, hs + pvp_k * pvp_hs_restore(1.0))
    offline = (24 - 2 - hunt_hrs) * 60
    stam = min(MAX_STAM, stam + offline * REGEN_PER_MIN_OFFLN)
    hs   = min(MAX_HSTAM, hs + 2 * IDLE_PTS_HR)
    return pl, stam, hs, hl, pvl

P = {
    'P1': {'lv':1000.0,'stam':float(MAX_STAM),'hs':float(MAX_HSTAM),'join':0,  'on':False},
    'P2': {'lv':1000.0,'stam':float(MAX_STAM),'hs':float(MAX_HSTAM),'join':7,  'on':False},
    'P3': {'lv':1000.0,'stam':float(MAX_STAM),'hs':float(MAX_HSTAM),'join':14, 'on':False},
    'P4': {'lv':1000.0,'stam':float(MAX_STAM),'hs':float(MAX_HSTAM),'join':21, 'on':False},
    'P5': {'lv':1000.0,'stam':float(MAX_STAM),'hs':float(MAX_HSTAM),'join':28, 'on':False},
}
ref = 1000.0

def fmt(p):
    if not p['on']: return f"{'...':<16}"
    s = 'G' if p['stam']>=GREEN_THRESH else ('O' if p['stam']<ORANGE_THRESH else 'N')
    return f"{p['lv']/1e6:>7.3f}M [{s}]   "

SIM_DAYS = 70
players  = ['P1','P2','P3','P4','P5']

print(f"  {'Day':>3} | {'Reference':>10} | " + " | ".join(f"{'P'+str(i):>16}" for i in range(1,6)))
print("  " + "-" * (15 + 13 * len(players)))

for day in range(SIM_DAYS + 1):
    for k, p in P.items():
        if day == p['join'] and not p['on']:
            if ref > p['lv'] * 1.05:
                p['lv'] += catchup_kill(p['lv'], ref)
            p['on'] = True

    row = f"  {day:>3} | {ref/1e6:>9.3f}M |"
    for k in players:
        row += f" {fmt(P[k])[:16]:>16} |"
    print(row)

    if day == SIM_DAYS: break

    for k, p in P.items():
        if not p['on']: continue
        pvp_k = 133 if p['lv'] >= PVP_THRESHOLD else 0
        p['lv'],p['stam'],p['hs'],p['hl'],p['pl'] = sim_day(p['lv'],p['stam'],p['hs'],ref,pvp_k)

    ref = max((p['lv'] for p in P.values() if p['on']), default=ref)

# ─────────────────────────────────────────────────────────────────────────────
# SECTION 4: Present-day server — levels/kill comparison old vs new formula
# ─────────────────────────────────────────────────────────────────────────────
print()
print("=" * 80)
print(f"  SECTION 4: Current server (ref=17.944M) — old vs new formula")
print(f"  Old: pure ratio x BASE_LEVELS=10  |  New: gap x GAP_FRAC x ratio^0.7, OVERHEAD={TIER_OVERHEAD}")
print("=" * 80)
print()
print(f"  {'Player':>10} | {'Old lv/kill':>12} | {'New lv/kill':>12} | {'New (1.5x stam)':>15}")
print("  " + "-" * 57)
REF = 17_944_000.0
for pl in [REF, REF*0.75, REF*0.50, 5_864_000, REF*0.20, REF*0.10]:
    ratio_old = (1.0 * REF) / pl
    lv_old    = ratio_old * 10
    lv_new    = hunt_lv(pl, REF, 1.0, 1.0)
    lv_new15  = hunt_lv(pl, REF, 1.0, 1.5)
    print(f"  {pl/1e6:>9.2f}M | {lv_old:>12.1f} | {lv_new:>12.1f} | {lv_new15:>15.1f}")
