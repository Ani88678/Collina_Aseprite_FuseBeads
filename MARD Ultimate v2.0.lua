-- ============================================================================
-- MARD Palette v6.2 (Dynamic Highlight-Linked Palette & Sorting)
-- ============================================================================
local MARD = {}

local RAW_DATA = {
  {"A1",250,244,200,"A"},{"A2",255,255,213,"A"},{"A3",254,255,139,"A"},{"A4",251,237,86,"A"},{"A5",244,215,56,"A"},{"A6",254,172,76,"A"},{"A7",254,139,76,"A"},{"A8",255,218,69,"A"},{"A9",255,153,91,"A"},{"A10",247,124,49,"A"},{"A11",255,221,153,"A"},{"A12",254,159,114,"A"},{"A13",255,195,101,"A"},{"A14",253,84,61,"A"},{"A15",255,243,101,"A"},{"A16",255,255,159,"A"},{"A17",255,227,110,"A"},{"A18",254,190,125,"A"},{"A19",253,124,114,"A"},{"A20",255,213,104,"A"},{"A21",255,227,149,"A"},{"A22",244,245,125,"A"},{"A23",230,201,183,"A"},{"A24",247,248,162,"A"},{"A25",255,214,125,"A"},{"A26",255,200,48,"A"},
  {"B1",230,238,49,"B"},{"B2",99,243,71,"B"},{"B3",158,247,128,"B"},{"B4",93,224,53,"B"},{"B5",53,227,82,"B"},{"B6",101,226,166,"B"},{"B7",61,175,128,"B"},{"B8",28,156,79,"B"},{"B9",39,82,58,"B"},{"B10",149,211,194,"B"},{"B11",93,114,42,"B"},{"B12",22,111,65,"B"},{"B13",202,235,123,"B"},{"B14",173,233,70,"B"},{"B15",46,81,50,"B"},{"B16",197,237,156,"B"},{"B17",155,177,58,"B"},{"B18",230,238,73,"B"},{"B19",36,184,140,"B"},{"B20",194,240,204,"B"},{"B21",21,106,107,"B"},{"B22",11,60,67,"B"},{"B23",48,58,33,"B"},{"B24",238,252,165,"B"},{"B25",78,132,109,"B"},{"B26",141,122,53,"B"},{"B27",204,225,175,"B"},{"B28",158,229,185,"B"},{"B29",197,226,84,"B"},{"B30",226,252,177,"B"},{"B31",176,231,146,"B"},{"B32",156,171,90,"B"},
  {"C1",232,255,231,"C"},{"C2",169,249,252,"C"},{"C3",160,226,251,"C"},{"C4",65,204,255,"C"},{"C5",1,172,235,"C"},{"C6",80,170,240,"C"},{"C7",54,119,210,"C"},{"C8",15,84,192,"C"},{"C9",50,75,202,"C"},{"C10",62,188,226,"C"},{"C11",40,221,222,"C"},{"C12",28,51,77,"C"},{"C13",205,232,255,"C"},{"C14",213,253,255,"C"},{"C15",34,196,198,"C"},{"C16",21,87,168,"C"},{"C17",4,209,246,"C"},{"C18",29,51,68,"C"},{"C19",24,135,162,"C"},{"C20",23,109,175,"C"},{"C21",190,221,255,"C"},{"C22",103,180,190,"C"},{"C23",200,226,255,"C"},{"C24",124,196,255,"C"},{"C25",169,229,229,"C"},{"C26",60,174,216,"C"},{"C27",211,223,250,"C"},{"C28",187,207,237,"C"},{"C29",52,72,142,"C"},
  {"D1",174,180,242,"D"},{"D2",133,142,221,"D"},{"D3",47,84,175,"D"},{"D4",24,42,132,"D"},{"D5",184,67,197,"D"},{"D6",172,123,222,"D"},{"D7",136,84,179,"D"},{"D8",226,211,255,"D"},{"D9",213,185,248,"D"},{"D10",54,24,81,"D"},{"D11",185,186,225,"D"},{"D12",222,154,212,"D"},{"D13",185,0,149,"D"},{"D14",139,39,155,"D"},{"D15",47,31,144,"D"},{"D16",227,225,238,"D"},{"D17",196,212,246,"D"},{"D18",164,94,199,"D"},{"D19",216,195,215,"D"},{"D20",156,50,178,"D"},{"D21",154,0,155,"D"},{"D22",51,58,149,"D"},{"D23",235,218,252,"D"},{"D24",119,134,229,"D"},{"D25",73,79,199,"D"},{"D26",223,194,248,"D"},
  {"E1",253,211,204,"E"},{"E2",254,192,223,"E"},{"E3",255,183,231,"E"},{"E4",232,100,158,"E"},{"E5",245,81,162,"E"},{"E6",241,61,116,"E"},{"E7",198,52,120,"E"},{"E8",255,219,233,"E"},{"E9",233,112,204,"E"},{"E10",211,55,147,"E"},{"E11",252,221,210,"E"},{"E12",247,143,195,"E"},{"E13",181,0,109,"E"},{"E14",255,209,186,"E"},{"E15",248,199,201,"E"},{"E16",255,243,235,"E"},{"E17",255,226,234,"E"},{"E18",255,199,219,"E"},{"E19",254,186,213,"E"},{"E20",216,199,209,"E"},{"E21",189,157,161,"E"},{"E22",183,133,161,"E"},{"E23",147,122,141,"E"},{"E24",225,188,232,"E"},
  {"F1",253,149,123,"F"},{"F2",252,61,70,"F"},{"F3",247,73,65,"F"},{"F4",252,40,60,"F"},{"F5",231,0,47,"F"},{"F6",148,54,48,"F"},{"F7",151,25,55,"F"},{"F8",188,0,40,"F"},{"F9",226,103,122,"F"},{"F10",138,69,38,"F"},{"F11",90,33,33,"F"},{"F12",253,78,106,"F"},{"F13",243,87,68,"F"},{"F14",255,169,173,"F"},{"F15",211,0,34,"F"},{"F16",254,194,166,"F"},{"F17",230,156,121,"F"},{"F18",211,124,70,"F"},{"F19",193,68,74,"F"},{"F20",205,147,145,"F"},{"F21",247,180,198,"F"},{"F22",253,192,208,"F"},{"F23",246,126,102,"F"},{"F24",230,152,170,"F"},{"F25",229,75,79,"F"},
  {"G1",255,226,206,"G"},{"G2",255,196,170,"G"},{"G3",244,195,165,"G"},{"G4",225,179,131,"G"},{"G5",237,176,69,"G"},{"G6",233,156,23,"G"},{"G7",157,91,62,"G"},{"G8",117,56,50,"G"},{"G9",230,180,131,"G"},{"G10",217,140,57,"G"},{"G11",224,197,147,"G"},{"G12",255,200,144,"G"},{"G13",183,113,74,"G"},{"G14",141,97,76,"G"},{"G15",252,249,224,"G"},{"G16",242,217,186,"G"},{"G17",120,82,75,"G"},{"G18",255,228,204,"G"},{"G19",224,121,53,"G"},{"G20",169,64,35,"G"},{"G21",184,133,88,"G"},
  {"H1",253,251,255,"H"},{"H2",254,255,255,"H"},{"H3",182,177,186,"H"},{"H4",137,133,140,"H"},{"H5",72,70,78,"H"},{"H6",47,43,47,"H"},{"H7",0,0,0,"H"},{"H8",231,214,219,"H"},{"H9",237,237,237,"H"},{"H10",238,233,234,"H"},{"H11",206,205,213,"H"},{"H12",255,245,237,"H"},{"H13",245,236,210,"H"},{"H14",207,215,211,"H"},{"H15",152,166,168,"H"},{"H16",29,20,20,"H"},{"H17",241,237,237,"H"},{"H18",255,253,240,"H"},{"H19",246,239,226,"H"},{"H20",148,159,163,"H"},{"H21",255,251,225,"H"},{"H22",202,202,212,"H"},{"H23",154,157,148,"H"},
  {"M1",188,198,184,"M"},{"M2",138,163,134,"M"},{"M3",105,125,128,"M"},{"M4",227,210,188,"M"},{"M5",208,204,170,"M"},{"M6",176,167,130,"M"},{"M7",180,164,151,"M"},{"M8",179,130,129,"M"},{"M9",165,135,103,"M"},{"M10",197,178,188,"M"},{"M11",159,117,148,"M"},{"M12",100,71,73,"M"},{"M13",209,144,102,"M"},{"M14",199,115,98,"M"},{"M15",117,125,120,"M"},
  {"P1",252,247,248,"P"},{"P2",176,169,172,"P"},{"P3",175,220,171,"P"},{"P4",254,164,159,"P"},{"P5",238,140,62,"P"},{"P6",95,208,167,"P"},{"P7",235,146,112,"P"},{"P8",240,217,88,"P"},{"P9",217,217,217,"P"},{"P10",217,199,234,"P"},{"P11",243,236,201,"P"},{"P12",230,238,201,"P"},{"P13",170,203,239,"P"},{"P14",51,118,128,"P"},{"P15",102,133,117,"P"},{"P16",254,191,69,"P"},{"P17",254,163,36,"P"},{"P18",254,184,159,"P"},{"P19",255,254,236,"P"},{"P20",254,190,207,"P"},{"P21",236,190,191,"P"},{"P22",228,168,159,"P"},{"P23",165,98,104,"P"},
  {"R1",213,13,33,"R"},{"R2",249,47,131,"R"},{"R3",253,131,36,"R"},{"R4",248,236,49,"R"},{"R5",53,199,91,"R"},{"R6",35,136,145,"R"},{"R7",25,119,157,"R"},{"R8",26,96,195,"R"},{"R9",154,86,180,"R"},{"R10",255,219,76,"R"},{"R11",255,235,250,"R"},{"R12",216,213,206,"R"},{"R13",85,81,76,"R"},{"R14",159,228,223,"R"},{"R15",119,206,233,"R"},{"R16",62,207,202,"R"},{"R17",74,134,122,"R"},{"R18",127,205,157,"R"},{"R19",205,229,93,"R"},{"R20",232,199,180,"R"},{"R21",173,111,60,"R"},{"R22",108,55,47,"R"},{"R23",254,184,114,"R"},{"R24",243,193,192,"R"},{"R25",201,103,94,"R"},{"R26",210,147,190,"R"},{"R27",234,140,177,"R"},{"R28",156,135,214,"R"},
  {"T1",255,255,255,"T"}
}

MARD.COLORS = {}
for _, v in ipairs(RAW_DATA) do table.insert(MARD.COLORS, { id=v[1], r=v[2], g=v[3], b=v[4], cat=v[5] }) end

MARD.FONT_3X5 = {
  ['0']={"111","101","101","101","111"},['1']={"010","110","010","010","111"},['2']={"111","001","111","100","111"},['3']={"111","001","111","001","111"},['4']={"101","101","111","001","001"},['5']={"111","100","111","001","111"},['6']={"111","100","111","101","111"},['7']={"111","001","010","010","010"},['8']={"111","101","111","101","111"},['9']={"111","101","111","001","111"},['A']={"010","101","111","101","101"},['B']={"110","101","110","101","110"},['C']={"011","100","100","100","011"},['D']={"110","101","101","101","110"},['E']={"111","100","110","100","111"},['F']={"111","100","110","100","100"},['G']={"011","100","101","101","011"},['H']={"101","101","111","101","101"},['M']={"101","111","101","101","101"},['P']={"111","101","111","100","100"},['R']={"110","101","110","101","101"},['T']={"111","010","010","010","010"},['-']={"000","000","111","000","000"},['X']={"101","101","010","101","101"}
}

local useFullMode = false
local currentCat = "All"
local sortMode = "Quantity (Desc)"
local selectedIndex = nil
local hoveredIndex = nil
local activeId = "-"
local scrollY = 0
local isDragging = false
local dragStartMouseY = 0
local dragStartScrollY = 0

local globalCounts = {}
local uniqueColorsUsed = 0

local COLS_GRID = 5
local CELL_SIZE = 19
local GAP = 1
local MARGIN = 3
local SCROLL_TRACK_W = 6
local SCROLL_BAR_W = 4
local MAX_VIEWPORT_H = 220
local FIXED_VIEWPORT_W = MARGIN * 2 + COLS_GRID * CELL_SIZE + (COLS_GRID - 1) * GAP + SCROLL_TRACK_W + 2

local function getActiveColors()
  local list = {}
  for _, c in ipairs(MARD.COLORS) do
    if useFullMode or (c.cat ~= "P" and c.cat ~= "R" and c.cat ~= "T") then table.insert(list, c) end
  end
  return list
end

local function getCatOptions()
  return useFullMode and { "All", "A", "B", "C", "D", "E", "F", "G", "H", "M", "P", "R", "T" } or { "All", "A", "B", "C", "D", "E", "F", "G", "H", "M" }
end

function MARD.findNearestColor(r, g, b, colorList)
  local bestDist, bestColor = math.huge, colorList[1]
  for _, c in ipairs(colorList) do
    local dist = (c.r - r)^2 + (c.g - g)^2 + (c.b - b)^2
    if dist < bestDist then bestDist = dist; bestColor = c end
  end
  return bestColor
end

function MARD.drawPixelText(ctxOrImg, text, startX, startY, color, isCanvas)
  if isCanvas then ctxOrImg.color = color end
  local curX = startX
  for i = 1, #text do
    local char = string.upper(string.sub(text, i, i))
    local glyph = MARD.FONT_3X5[char]
    if glyph then
      for r = 1, 5 do
        local line = glyph[r]
        for c = 1, 3 do
          if string.sub(line, c, c) == "1" then 
            if isCanvas then ctxOrImg:fillRect(Rectangle(curX + (c - 1), startY + (r - 1), 1, 1))
            else ctxOrImg:drawPixel(curX + (c - 1), startY + (r - 1), color) end
          end
        end
      end
      curX = curX + 4
    else curX = curX + 3 end
  end
end

local function isHighlightActive(sprite)
  if not sprite then return false end
  for _, l in ipairs(sprite.layers) do
    if l.name == "MARD_Highlight_Mask" then return true end
  end
  return false
end

local function scanImageCounts(sprite)
  globalCounts = {}
  uniqueColorsUsed = 0
  if not sprite then return end
  
  local baseColors = getActiveColors()
  
  -- Hide mask if present so counts are not contaminated
  local hlLayer = nil
  for _, l in ipairs(sprite.layers) do if l.name == "MARD_Highlight_Mask" then hlLayer = l break end end
  if hlLayer then hlLayer.isVisible = false end
  
  local flatImg = Image(sprite)
  if hlLayer then hlLayer.isVisible = true end

  for it in flatImg:pixels() do
    if app.pixelColor.rgbaA(it()) > 0 then
      local pr, pg, pb = app.pixelColor.rgbaR(it()), app.pixelColor.rgbaG(it()), app.pixelColor.rgbaB(it())
      local nc = MARD.findNearestColor(pr, pg, pb, baseColors)
      if not globalCounts[nc.id] then
        globalCounts[nc.id] = 1
        uniqueColorsUsed = uniqueColorsUsed + 1
      else
        globalCounts[nc.id] = globalCounts[nc.id] + 1
      end
    end
  end
end

local currentList = {}
local function updateCurrentList(sprite)
  scanImageCounts(sprite)
  local baseColors = getActiveColors()
  currentList = {}
  
  local inHighlight = isHighlightActive(sprite)
  
  if inHighlight then
    -- When Highlight is ON: Build dynamic palette of in-use colors only
    for _, c in ipairs(baseColors) do
      if globalCounts[c.id] and globalCounts[c.id] > 0 then
        table.insert(currentList, { id=c.id, r=c.r, g=c.g, b=c.b, cat=c.cat, count=globalCounts[c.id] })
      end
    end

    -- Sorting operates directly on this in-use palette
    if sortMode == "Quantity (Desc)" then
      table.sort(currentList, function(a, b) return a.count > b.count end)
    elseif sortMode == "Quantity (Asc)" then
      table.sort(currentList, function(a, b) return a.count < b.count end)
    else -- ID sort
      table.sort(currentList, function(a, b)
        local c1, n1 = a.id:match("(%a+)(%d+)")
        local c2, n2 = b.id:match("(%a+)(%d+)")
        if c1 == c2 then return tonumber(n1) < tonumber(n2) end
        return (c1 or "") < (c2 or "")
      end)
    end
  else
    -- Standard Mode: Filter by Category
    for _, item in ipairs(baseColors) do
      if currentCat == "All" or item.cat == currentCat then
        local cnt = globalCounts[item.id] or 0
        table.insert(currentList, { id=item.id, r=item.r, g=item.g, b=item.b, cat=item.cat, count=cnt })
      end
    end
  end
end

local function isListView(sprite) return isHighlightActive(sprite) end
local function getActiveCols(sprite) return isListView(sprite) and 1 or COLS_GRID end
local function getTotalRows(sprite) return math.max(1, math.ceil(#currentList / getActiveCols(sprite))) end
local function getTotalContentH(sprite) return MARGIN * 2 + getTotalRows(sprite) * CELL_SIZE + (getTotalRows(sprite) - 1) * GAP end
local function getActiveViewportH(sprite) return math.min(getTotalContentH(sprite), MAX_VIEWPORT_H) end
local function needsScroll(sprite) return getTotalContentH(sprite) > getActiveViewportH(sprite) end
local function getMaxScroll(sprite) return math.max(0, getTotalContentH(sprite) - getActiveViewportH(sprite)) end
local function clampScroll(sprite) if scrollY < 0 then scrollY = 0 end; local maxS = getMaxScroll(sprite); if scrollY > maxS then scrollY = maxS end end
local function getContrastColor(r, g, b) return (0.299 * r + 0.587 * g + 0.114 * b > 140) and Color{ r = 15, g = 15, b = 15 } or Color{ r = 250, g = 250, b = 250 } end

local function getThumbGeometry(sprite)
  local viewH = getActiveViewportH(sprite); local maxS = getMaxScroll(sprite); local trackX = FIXED_VIEWPORT_W - SCROLL_TRACK_W - 1
  if maxS <= 0 then return trackX + 1, 1, SCROLL_BAR_W, viewH - 2, 1, viewH - 2 end
  local thumbH = math.max(18, math.floor((viewH - 2) * (viewH / getTotalContentH(sprite))))
  return trackX + 1, 1 + math.floor(((viewH - 2) - thumbH) * (scrollY / maxS)), SCROLL_BAR_W, thumbH, 1, viewH - 2
end

local function getIndexAt(x, y, sprite)
  if needsScroll(sprite) and x > FIXED_VIEWPORT_W - SCROLL_TRACK_W - 2 then return nil end
  local vY = y + scrollY - MARGIN; local vX = x - MARGIN
  local col = math.floor(vX / (CELL_SIZE + GAP)); local row = math.floor(vY / (CELL_SIZE + GAP))
  
  if isListView(sprite) then
    if row >= 0 and row < #currentList then return row + 1 end
    return nil
  end

  if col >= 0 and col < COLS_GRID and row >= 0 and row < getTotalRows(sprite) then
    if vX % (CELL_SIZE + GAP) < CELL_SIZE and vY % (CELL_SIZE + GAP) < CELL_SIZE then
      local idx = row * COLS_GRID + col + 1; if idx <= #currentList then return idx end
    end
  end
  return nil
end

local function getPixelCountStr(idx)
  if not idx or not currentList[idx] then return "-" end
  local c = currentList[idx]
  local cnt = globalCounts[c.id] or c.count or 0
  return c.id .. " (" .. cnt .. " PX)"
end

local function updateHighlightMask(sprite)
  if not sprite then return end
  local hlLayer = nil
  for _, l in ipairs(sprite.layers) do if l.name == "MARD_Highlight_Mask" then hlLayer = l break end end
  if not hlLayer then return end
  
  local tc = nil
  local currentModeColors = getActiveColors()
  for _, c in ipairs(currentModeColors) do if c.id == activeId then tc = c break end end
  if not tc then return end
  
  local originalLayer = app.activeLayer
  app.transaction("Update Highlight", function()
    hlLayer.isVisible = false 
    local flatImg = Image(sprite)
    hlLayer.isVisible = true 
    
    local cel = hlLayer:cel(app.activeFrame)
    if not cel then cel = sprite:newCel(hlLayer, app.activeFrame) end
    local img = Image(sprite.width, sprite.height, ColorMode.RGB)
    
    for it in flatImg:pixels() do
      if app.pixelColor.rgbaA(it()) > 0 then
        local pr, pg, pb = app.pixelColor.rgbaR(it()), app.pixelColor.rgbaG(it()), app.pixelColor.rgbaB(it())
        if pr == tc.r and pg == tc.g and pb == tc.b then 
          img:drawPixel(it.x, it.y, app.pixelColor.rgba(pr, pg, pb, 255))
        else 
          img:drawPixel(it.x, it.y, app.pixelColor.rgba(0, 0, 0, 180)) 
        end
      end
    end
    cel.image = img
  end)
  app.activeLayer = originalLayer
  app.refresh()
end

local createDialog
createDialog = function(savedPos)
  local sprite = app.activeSprite
  updateCurrentList(sprite)
  local inHighlight = isHighlightActive(sprite)
  
  local dlg = Dialog{ title = inHighlight and "MARD [Highlight Active]" or "MARD Palette v6.2" }
  
  dlg:check{
    id = "full_mode",
    text = "Full Palette (273)",
    selected = useFullMode,
    onclick = function()
      useFullMode = dlg.data.full_mode
      if not useFullMode and (currentCat == "P" or currentCat == "R" or currentCat == "T") then currentCat = "All" end
      scrollY = 0; selectedIndex = nil; hoveredIndex = nil
      local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
    end
  }
  
  dlg:newrow()
  
  if inHighlight then
    -- When Highlight is active: Display Sort combobox controlling the in-use palette
    dlg:combobox{
      id = "sort_mode", label = "Sort Used:", options = {"Quantity (Desc)", "Quantity (Asc)", "ID"}, option = sortMode,
      onchange = function()
        sortMode = dlg.data.sort_mode
        scrollY = 0; selectedIndex = nil; hoveredIndex = nil
        local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
      end
    }
  else
    -- Standard Mode: Category filter
    dlg:combobox{
      id = "cat_filter", label = "Category:", options = getCatOptions(), option = currentCat,
      onchange = function()
        currentCat = dlg.data.cat_filter
        scrollY = 0; selectedIndex = nil; hoveredIndex = nil
        local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
      end
    }
  end

  dlg:newrow()
  dlg:canvas{
    id = "palette_canvas", width = FIXED_VIEWPORT_W, height = getActiveViewportH(sprite),
    onpaint = function(ev)
      local ctx = ev.context; local viewH = getActiveViewportH(sprite)
      ctx.color = Color{ r = 28, g = 28, b = 32 }; ctx:fillRect(Rectangle(0, 0, ev.width, ev.height))
      
      for i, item in ipairs(currentList) do
        local isList = isListView(sprite)
        local col = isList and 0 or ((i - 1) % COLS_GRID)
        local row = isList and (i - 1) or math.floor((i - 1) / COLS_GRID)
        local x = MARGIN + col * (CELL_SIZE + GAP)
        local y = MARGIN + row * (CELL_SIZE + GAP) - scrollY

        if y + CELL_SIZE >= 0 and y <= viewH then
          ctx.color = Color{ r = item.r, g = item.g, b = item.b }
          ctx:fillRect(Rectangle(x, y, CELL_SIZE, CELL_SIZE))
          
          ctx.color = (i == selectedIndex) and Color{ r = 255, g = 255, b = 255 } or ((i == hoveredIndex) and Color{ r = 195, g = 195, b = 205 } or Color{ r = 38, g = 38, b = 44 })
          ctx:strokeRect(Rectangle(x, y, CELL_SIZE, CELL_SIZE))
          
          if isList then
            MARD.drawPixelText(ctx, item.id, x + math.floor((CELL_SIZE - (#item.id * 4 - 1)) / 2), y + math.floor((CELL_SIZE - 5) / 2), getContrastColor(item.r, item.g, item.b), true)
            local countText = "- " .. tostring(item.count) .. " PX"
            local textColor = (item.count == 1) and Color{ r = 255, g = 60, b = 60 } or Color{ r = 200, g = 205, b = 215 }
            MARD.drawPixelText(ctx, countText, x + CELL_SIZE + 6, y + math.floor((CELL_SIZE - 5) / 2), textColor, true)
          else
            MARD.drawPixelText(ctx, item.id, x + math.floor((CELL_SIZE - (#item.id * 4 - 1)) / 2), y + math.floor((CELL_SIZE - 5) / 2), getContrastColor(item.r, item.g, item.b), true)
          end
        end
      end
      
      if needsScroll(sprite) then
        ctx.color = Color{ r = 18, g = 18, b = 22 }; ctx:fillRect(Rectangle(FIXED_VIEWPORT_W - SCROLL_TRACK_W - 1, 0, SCROLL_TRACK_W, viewH))
        local tx, ty, tw, th = getThumbGeometry(sprite)
        ctx.color = Color{ r = 115, g = 135, b = 155 }; ctx:fillRect(Rectangle(tx, ty + 1, tw, th - 2)); ctx:fillRect(Rectangle(tx + 1, ty, tw - 2, th))
      end
    end,
    onwheel = function(ev) if needsScroll(sprite) and ev.deltaY ~= 0 then scrollY = scrollY + ((ev.deltaY > 0 and 1 or -1) * math.min(math.abs(ev.deltaY) * 4, CELL_SIZE * 1.2)); clampScroll(sprite); dlg:repaint() end end,
    onmousedown = function(ev)
      if ev.button == MouseButton.LEFT then
        if needsScroll(sprite) and ev.x >= FIXED_VIEWPORT_W - SCROLL_TRACK_W - 2 then
          local _, ty, _, th = getThumbGeometry(sprite)
          if ev.y >= ty and ev.y <= ty + th then isDragging = true; dragStartMouseY = ev.y; dragStartScrollY = scrollY
          else scrollY = scrollY + (ev.y < ty and -getActiveViewportH(sprite) * 0.5 or getActiveViewportH(sprite) * 0.5); clampScroll(sprite); dlg:repaint() end
          return
        end
        local idx = getIndexAt(ev.x, ev.y, sprite)
        if idx then 
          selectedIndex = idx; 
          activeId = currentList[idx].id; 
          app.fgColor = Color{ r = currentList[idx].r, g = currentList[idx].g, b = currentList[idx].b }; 
          dlg:modify{ id = "info_lbl", text = "Sel: " .. getPixelCountStr(selectedIndex) .. " | Hov: " .. getPixelCountStr(selectedIndex) }; 
          dlg:repaint() 
          updateHighlightMask(app.activeSprite)
        end
      end
    end,
    onmousemove = function(ev)
      if isDragging then local _, _, _, th, _, trackH = getThumbGeometry(sprite); if trackH - th > 0 then scrollY = dragStartScrollY + (ev.y - dragStartMouseY) * (getMaxScroll(sprite) / (trackH - th)); clampScroll(sprite); dlg:repaint() end return end
      local idx = getIndexAt(ev.x, ev.y, sprite)
      if idx ~= hoveredIndex then 
        hoveredIndex = idx
        dlg:modify{ id = "info_lbl", text = "Sel: " .. getPixelCountStr(selectedIndex) .. " | Hov: " .. getPixelCountStr(idx) }
        dlg:repaint() 
      end
    end,
    onmouseup = function(ev) if isDragging then isDragging = false; dlg:repaint() end end
  }

  dlg:separator()
  dlg:label{ id = "stats_lbl", text = inHighlight and ("In-Use Colors: " .. #currentList) or ("In-Use: " .. uniqueColorsUsed .. " | Shown: " .. #currentList) }
  dlg:label{ id = "info_lbl", text = "Sel: " .. getPixelCountStr(selectedIndex) .. " | Hov: -" }
  
  dlg:separator{ text = "Tools" }
  
  dlg:button{ id = "btn_convert", text = "Convert Image",
    onclick = function()
      if not app.activeSprite then return app.alert("Open a sprite first!") end
      local currentModeColors = getActiveColors()
      local changedCount = 0
      
      app.transaction("Convert to MARD Colors", function()
        for _, cel in ipairs(app.activeSprite.cels) do
          if cel.image.colorMode == ColorMode.RGB then
            local newImg = cel.image:clone()
            for it in newImg:pixels() do
              if app.pixelColor.rgbaA(it()) > 0 then
                local pr, pg, pb = app.pixelColor.rgbaR(it()), app.pixelColor.rgbaG(it()), app.pixelColor.rgbaB(it())
                local nc = MARD.findNearestColor(pr, pg, pb, currentModeColors)
                if pr ~= nc.r or pg ~= nc.g or pb ~= nc.b then
                  changedCount = changedCount + 1
                  it(app.pixelColor.rgba(nc.r, nc.g, nc.b, app.pixelColor.rgbaA(it())))
                end
              end
            end
            cel.image = newImg
          end
        end
      end)
      app.refresh()
      app.alert("Conversion Complete!\n\nChanged " .. changedCount .. " pixels to match standard colors.")
      
      local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
    end
  }
  
  dlg:newrow()
  
  -- Toggle Highlight Button: Toggles mask and instantly switches palette view
  dlg:button{ id = "btn_highlight", text = inHighlight and "Turn Off Highlight" or "Turn On Highlight",
    onclick = function()
      local sp = app.activeSprite
      if not sp then return app.alert("Open a sprite first!") end
      
      local hlLayer = nil
      for _, l in ipairs(sp.layers) do
        if l.name == "MARD_Highlight_Mask" then hlLayer = l break end
      end
      
      if hlLayer then
        -- Turn OFF Highlight: delete mask and return to standard grid palette
        app.transaction("Clear Highlight", function() sp:deleteLayer(hlLayer) end)
        app.refresh()
        scrollY = 0; selectedIndex = nil; hoveredIndex = nil
        local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
        return
      end
      
      -- Turn ON Highlight
      scanImageCounts(sp)
      if uniqueColorsUsed == 0 then return app.alert("Current canvas is empty!") end
      
      local baseColors = getActiveColors()
      local firstColor = nil
      for _, c in ipairs(baseColors) do
        if globalCounts[c.id] and globalCounts[c.id] > 0 then firstColor = c; break end
      end
      
      if activeId == "-" or not globalCounts[activeId] or globalCounts[activeId] == 0 then
        if firstColor then
          activeId = firstColor.id
          app.fgColor = Color{ r = firstColor.r, g = firstColor.g, b = firstColor.b }
        end
      end
      
      local originalLayer = app.activeLayer
      app.transaction("Create Highlight Mask", function()
        hlLayer = sp:newLayer()
        hlLayer.name = "MARD_Highlight_Mask"
      end)
      app.activeLayer = originalLayer
      updateHighlightMask(sp)
      
      -- Reopen dialog into Highlight Mode
      scrollY = 0; selectedIndex = nil; hoveredIndex = nil
      local bounds = dlg.bounds; dlg:close(); createDialog({ x = bounds.x, y = bounds.y, width = bounds.width })
    end
  }

  dlg:newrow()
  
  dlg:button{ id = "btn_label", text = "Label Pixels",
    onclick = function()
      local sp = app.activeSprite
      if not sp then return app.alert("Open a sprite first!") end
      
      local currentModeColors = getActiveColors()
      local scale = 15 
      local newSprite = Sprite(sp.width * scale, sp.height * scale, ColorMode.RGB)
      
      app.transaction("Generate Pixel Labels", function()
        local hlLayer = nil
        for _, l in ipairs(sp.layers) do if l.name == "MARD_Highlight_Mask" then hlLayer = l break end end
        if hlLayer then hlLayer.isVisible = false end
        local flatImg = Image(sp)
        if hlLayer then hlLayer.isVisible = true end
        
        local outImg = newSprite.cels[1].image
        outImg:clear()
        
        for y = 0, flatImg.height - 1 do
          for x = 0, flatImg.width - 1 do
            local px = flatImg:getPixel(x, y)
            if app.pixelColor.rgbaA(px) > 0 then
              local pr, pg, pb = app.pixelColor.rgbaR(px), app.pixelColor.rgbaG(px), app.pixelColor.rgbaB(px)
              local nc = MARD.findNearestColor(pr, pg, pb, currentModeColors)
              
              local c32 = app.pixelColor.rgba(nc.r, nc.g, nc.b, 255)
              local sx = x * scale
              local sy = y * scale
              for iy = 0, scale - 1 do
                for ix = 0, scale - 1 do
                  outImg:drawPixel(sx + ix, sy + iy, c32)
                end
              end
              
              local textColor = (0.299 * nc.r + 0.587 * nc.g + 0.114 * nc.b > 140) and app.pixelColor.rgba(15,15,15,255) or app.pixelColor.rgba(250,250,250,255)
              local textW = #(nc.id) * 4 - 1
              local tx = sx + math.floor((scale - textW) / 2)
              local ty = sy + math.floor((scale - 5) / 2)
              MARD.drawPixelText(outImg, nc.id, tx, ty, textColor, false)
            end
          end
        end
      end)
      app.command.FitScreen()
      app.refresh()
    end
  }

  dlg:show{ wait = false }
  if savedPos then dlg.bounds = Rectangle(savedPos.x, savedPos.y, savedPos.width, dlg.bounds.height) end
end

createDialog()