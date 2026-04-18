# EXP System Design — PvP & Hunting

## 1. Philosophy

The server targets players in the hundreds-of-thousands to millions of levels range.
Three core goals drive the design:

1. **PvP is the primary progression source** — engaging in PvP should always be more
   rewarding than hunting when PvP is available.
2. **Hunting keeps low/catching-up players motivated** — a player far below the server
   reference level gets a massive catch-up bonus from monsters, making solo grinding
   worthwhile until they can close the gap enough to PvP.
3. **All rate bonuses apply uniformly** — stamina, events, guild rank, XP boost all
   affect both PvP and hunting the same way through a single "effective rate" function.

---

## 2. The Effective Rate

Everything flows through one unified multiplier called the **Effective Rate**:

```
Effective Rate = Stamina × Base Server Rate × (1 + Guild Bonus + XP Boost)
```

| Component       | Description                                      | Range          |
|-----------------|--------------------------------------------------|----------------|
| Stamina         | Green premium = 1.5×, Normal = 1.0×, Orange = 0.5× | 0.5× – 1.5×  |
| Base Server Rate| Configured per-server; can vary by level stage   | e.g. 1× – 100×|
| Guild Rank Bonus| Additive %, assigned per guild rank              | +0% – varies  |
| XP Boost        | Store or daily reward, additive %                | +0% – varies  |

This rate applies to **both** hunting and PvP identically. At full green stamina with
no other bonuses, Effective Rate = 1.5.

The PvP formula constants are calibrated so that Effective Rate = 1.5 produces the
reference table values. All bonuses scale from there automatically — no special cases.

---

## 3. Monster Hunting Formula

The monster exp pipeline fires in order:

1. **Base exp** — raw exp value from the monster definition
2. **Boosted creature** — ×2 if this is today's boosted monster
3. **Prey bonus** — additive % if this race is under an active prey slot
4. **VIP bonus** — flat additive % if player has VIP status
5. **Catch-Up multiplier** — large multiplier if player is far below server reference level *(see Section 5)*
6. **Effective Rate** — stamina × server rate × (1 + guild + XP boost)

```
Final Monster EXP = BaseExp × Boosted × Prey × VIP × CatchUpMult × EffectiveRate
```

Important notes:
- Catch-up applies to **monster hunting only** — PvP has its own built-in gap mechanism.
- Effective Rate (stamina, events, boosts) applies uniformly — no monster-specific overrides.

---

## 4. PvP Kill Formula

When a player dies in PvP, all eligible attackers receive exp calculated from two
additive pools. The pools are in raw exp, converted to levels by the game automatically.

### Pool 1 — Gap Pool (Low-level Catch-Up in PvP)

Rewards the attacker for killing a player much higher-level than themselves:

```
levelsGained_gap = levelGap × GAP_FRACTION × ratio^RATIO_POWER
```

- `levelGap` = victimLevel − attackerLevel (minimum 0; no reward if attacker is higher)
- `ratio` = victimLevel / attackerLevel
- `RATIO_POWER = 0.7` — harder kills (higher ratio) scale proportionally better
- `GAP_FRACTION = 0.008` — calibrated so ~20 kills at 20× ratio closes ~70% of the gap

The power curve means the reward grows sub-linearly with difficulty — enough to
incentivize dangerous kills without being absurd at extreme ratios:

| ratio (victim / attacker) | ratio^0.7 | Approx % of gap per kill |
|--------------------------|-----------|--------------------------|
| 1× (equal level)         | 1.00      | 0% (no gap)              |
| 2×                       | 1.62      | ~1.3% of gap             |
| 5×                       | 3.09      | ~2.5% of gap             |
| 10×                      | 5.01      | ~4.0% of gap             |
| 20×                      | 8.13      | ~6.5% of gap             |

Note: as the attacker levels up from kills, the ratio shrinks and each subsequent
kill gives less. This is intentional — diminishing returns prevent instant closure.

### Pool 2 — Base Pool (Minimum Reward)

Ensures that even equal-level kills pay meaningfully, independent of any level gap:

```
levelsGained_base ≈ ratio × 240   (at full green stamina, solo)
```

240 levels is the calibrated baseline for an equal-level kill at the reference rate
(full green stamina = 1.5×). Lower stamina reduces this proportionally.

### Combined Final Formula

```
totalExp = (gapPool + basePool) × contributionRatio × warMult × effectiveRate
```

| Factor            | Description                                          | Default |
|-------------------|------------------------------------------------------|---------|
| contributionRatio | Attacker's share of total player damage on the victim| 0–1.0   |
| warMult           | +50% if both players are in an active guild war      | 1.0×    |
| effectiveRate     | Stamina × server rate × (1 + guild + XP boost)       | 1.5×    |

### Worked Example

Attacker: level 2,770,534 | Victim: level 17,944,038 | Effective rate: 1.5 | Solo kill

```
ratio      = 17,944,038 / 2,770,534 = 6.48
levelGap   = 15,173,504
ratioMult  = 6.48^0.7 ≈ 3.70

levelsGained_gap  = 15,173,504 × 0.008 × 3.70 × 1.5 ≈ 673,000 levels
levelsGained_base = 6.48 × 240 × 1.5               ≈   2,333 levels

Total gained ≈ 675,000 levels
Confirmed in-game: 608,126 levels (~90% match; remainder = cost approximation drift)
```

---

## 5. Catch-Up System (Monster Hunting Only)

Players far below the server reference level receive a multiplier on monster exp.
This is intentionally **separate from PvP** — PvP already rewards low players via the
gap pool.

### Reference Level

The server maintains a global `reference_level` value — typically the top player's
level or the server's current high watermark.

### Formula

```
rawMult    = (referenceLevel / playerLevel) ^ 1.0    [linear: 20x behind = 20x bonus]
progress   = playerLevel / (referenceLevel × 0.85)   [0 = very low, 1 = at threshold]
catchUpMult = 1 + (rawMult - 1) × (1 - progress)    [smooth fade, no cliff]
```

- Far below reference (progress ≈ 0): catchUpMult ≈ rawMult — full boost
- At 85% of reference (progress = 1): catchUpMult = 1.0 — bonus ends smoothly
- Above 85% of reference: no catch-up, multiplier is exactly 1.0

### Example — Reference Level = 20,000,000

| Player Level | Ratio (ref/player) | Raw Mult | Progress | Catch-Up Mult | Monster EXP vs No Catch-Up |
|-------------|-------------------|----------|----------|---------------|---------------------------|
| 1,000,000   | 20×               | 20.0×    | 0.06     | ~19.0×        | ~1,900% of normal         |
| 5,000,000   | 4×                | 4.0×     | 0.29     | ~3.0×         | ~300% of normal           |
| 10,000,000  | 2×                | 2.0×     | 0.59     | ~1.41×        | ~141% of normal           |
| 15,000,000  | 1.33×             | 1.33×    | 0.88     | ~1.04×        | ~104% of normal           |
| 17,000,000+ | —                 | —        | ≥ 1.0    | 1.0× (off)    | Normal                    |

---

## 6. PvP vs Hunting Balance

| Scenario                                       | Hunting                                | PvP                                     |
|-----------------------------------------------|----------------------------------------|-----------------------------------------|
| Far below reference, no PvP available          | Massive catch-up — grinding is viable  | No applicable target; gap pool inactive |
| Far below reference, PvP target available      | Catch-up still helps monster income    | Enormous gap pool per kill              |
| Near reference level (>85% of ref)             | No catch-up; normal monster rates      | Base pool only: ~240 levels/kill × rate |
| Equal-level PvP                                | No catch-up                            | Base pool: ~240 levels × rate × share  |
| Top-level player                               | No catch-up                            | War bonus ×1.5; guild bonus stacks      |

### Core balance principle

**PvP should always be more rewarding than hunting for the same time investment when PvP is available.**

A player at 1M with a 20M reference gets ~19× monster exp — their grinding accelerates
greatly. But a single successful PvP kill on a high-level player yields hundreds of
thousands of levels instantly. Hunting is the fallback; PvP is the primary engine.

---

## 7. Stamina

Stamina is a shared resource that constrains both systems:

| State                   | Stamina Multiplier | Applies To     |
|-------------------------|--------------------|----------------|
| Green (>39h, premium)   | 1.5×               | Both           |
| Normal (14h–39h)        | 1.0×               | Both           |
| Orange (<14h)           | 0.5×               | Both           |

Additionally, **each PvP kill drains 5 minutes of stamina** from the attacker,
regardless of hunting. This softly limits how much a player can benefit from intensive
PvP without rest, and creates a reason to balance time between PvP and recovery.

---

## 8. Anti-Abuse Safeguards (PvP Only)

| Rule                          | Description                                             |
|-------------------------------|---------------------------------------------------------|
| Min damage contribution       | Attacker must deal ≥ 5% of total player damage          |
| Same-IP block (configurable)  | Kills against same IP address award no exp              |
| Same-account block (configurable) | Kills against same account award no exp             |
| Contribution ratio split      | Group kills split exp proportionally by damage dealt    |
