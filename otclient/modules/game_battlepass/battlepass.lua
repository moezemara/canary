--[[
  War Pass — OTClient module
  Drop this folder into your OTClient /modules directory.

  Server → Client  opcode 100: open War Pass window (buffer = full HTML string)
  Client → Server  opcode 101: claim a tier  (buffer = tier number as string, e.g. "5")
--]]

local OPCODE_OPEN  = 100
local OPCODE_CLAIM = 101

local battlepassWindow = nil

-- ─── Lifecycle ────────────────────────────────────────────────────────────────

function init()
  connect(g_game, {
    onGameStart = onGameStart,
    onGameEnd   = onGameEnd,
  })
end

function terminate()
  disconnect(g_game, {
    onGameStart = onGameStart,
    onGameEnd   = onGameEnd,
  })
  destroyWindow()
end

function onGameStart()
  ProtocolGame.registerExtendedOpcode(OPCODE_OPEN, onReceiveBattlepass)
end

function onGameEnd()
  destroyWindow()
end

-- ─── Window ───────────────────────────────────────────────────────────────────

function destroyWindow()
  if battlepassWindow then
    battlepassWindow:destroy()
    battlepassWindow = nil
  end
end

function onReceiveBattlepass(protocol, opcode, buffer)
  -- buffer IS the full HTML string sent from the server
  destroyWindow()

  -- Outer window
  battlepassWindow = g_ui.createWidget('MainWindow', rootWidget)
  battlepassWindow:setText('War Pass')
  battlepassWindow:setWidth(900)
  battlepassWindow:setHeight(680)
  battlepassWindow:centerIn(rootWidget)
  battlepassWindow:setDraggable(true)

  -- ── HTML display area ──────────────────────────────────────────────────────
  local scrollArea = g_ui.createWidget('ScrollablePanel', battlepassWindow)
  scrollArea:setId('scrollArea')
  scrollArea:addAnchor(AnchorTop,    'parent', AnchorTop)
  scrollArea:addAnchor(AnchorLeft,   'parent', AnchorLeft)
  scrollArea:addAnchor(AnchorRight,  'parent', AnchorRight)
  scrollArea:addAnchor(AnchorBottom, 'claimBar', AnchorTop)
  scrollArea:setMargin(4)

  local htmlContent = g_ui.createWidget('Label', scrollArea)
  htmlContent:setId('htmlContent')
  htmlContent:addAnchor(AnchorTop,   'parent', AnchorTop)
  htmlContent:addAnchor(AnchorLeft,  'parent', AnchorLeft)
  htmlContent:addAnchor(AnchorRight, 'parent', AnchorRight)
  htmlContent:setTextWrap(true)
  htmlContent:setHtml(buffer)  -- ← OTClientBR HTML rendering

  -- ── Bottom action bar ──────────────────────────────────────────────────────
  local claimBar = g_ui.createWidget('Panel', battlepassWindow)
  claimBar:setId('claimBar')
  claimBar:setHeight(52)
  claimBar:addAnchor(AnchorLeft,   'parent', AnchorLeft)
  claimBar:addAnchor(AnchorRight,  'parent', AnchorRight)
  claimBar:addAnchor(AnchorBottom, 'parent', AnchorBottom)
  claimBar:setBackgroundColor('#161b22')

  -- Tier label
  local tierLabel = g_ui.createWidget('Label', claimBar)
  tierLabel:setText('Tier:')
  tierLabel:setWidth(40)
  tierLabel:setColor('#8b949e')
  tierLabel:addAnchor(AnchorLeft,          'parent',   AnchorLeft)
  tierLabel:addAnchor(AnchorVerticalCenter,'parent',   AnchorVerticalCenter)
  tierLabel:setMarginLeft(14)

  -- Tier number input
  local tierInput = g_ui.createWidget('TextEdit', claimBar)
  tierInput:setId('tierInput')
  tierInput:setWidth(48)
  tierInput:setHeight(26)
  tierInput:setMaxLength(2)
  tierInput:addAnchor(AnchorLeft,          'tierLabel', AnchorRight)
  tierInput:addAnchor(AnchorVerticalCenter,'parent',    AnchorVerticalCenter)
  tierInput:setMarginLeft(6)

  -- Claim button
  local claimBtn = g_ui.createWidget('Button', claimBar)
  claimBtn:setText('Claim Reward')
  claimBtn:setWidth(120)
  claimBtn:setHeight(30)
  claimBtn:setColor('#e94560')
  claimBtn:addAnchor(AnchorLeft,          'tierInput', AnchorRight)
  claimBtn:addAnchor(AnchorVerticalCenter,'parent',    AnchorVerticalCenter)
  claimBtn:setMarginLeft(8)
  claimBtn.onClick = function()
    local tier = tonumber(tierInput:getText())
    if tier and tier >= 1 and tier <= 50 then
      -- Send claim opcode to server (buffer = tier number as string)
      local protocol = g_game.getProtocolGame()
      if protocol then
        local msg = OutputMessage.create()
        msg:addU8(0x32)          -- extended opcode prefix
        msg:addU8(OPCODE_CLAIM)  -- opcode 101
        msg:addString(tostring(tier))
        protocol:send(msg)
      end
      tierInput:setText('')
    end
  end

  -- Separator
  local sep = g_ui.createWidget('HorizontalSeparator', claimBar)
  sep:addAnchor(AnchorTop,   'parent', AnchorTop)
  sep:addAnchor(AnchorLeft,  'parent', AnchorLeft)
  sep:addAnchor(AnchorRight, 'parent', AnchorRight)

  -- Close button
  local closeBtn = g_ui.createWidget('Button', claimBar)
  closeBtn:setText('Close')
  closeBtn:setWidth(80)
  closeBtn:setHeight(30)
  closeBtn:addAnchor(AnchorRight,         'parent', AnchorRight)
  closeBtn:addAnchor(AnchorVerticalCenter,'parent', AnchorVerticalCenter)
  closeBtn:setMarginRight(12)
  closeBtn.onClick = function()
    destroyWindow()
  end
end
