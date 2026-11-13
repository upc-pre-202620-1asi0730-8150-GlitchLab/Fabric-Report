local function attr(tag, name)
  return tag:match(name .. '%s*=%s*"([^"]*)"') or tag:match(name .. "%s*=%s*'([^']*)'")
end

local function image_from(tag)
  local src = attr(tag, "src")
  if not src then return nil end
  local alt = attr(tag, "alt") or ""
  local attrs = {}
  local w = attr(tag, "width")
  if w and w:match("^%d+%%?$") then
    attrs.width = w:match("%%$") and w or (w .. "px")
  end
  return pandoc.Image({ pandoc.Str(alt) }, src, "", pandoc.Attr("", {}, attrs))
end

function RawInline(el)
  if el.format ~= "html" then return nil end
  local text = el.text
  if text:match("^<img") then
    return image_from(text) or {}
  elseif text:match("^<br") then
    return pandoc.LineBreak()
  end
  return {}
end

function RawBlock(el)
  if el.format ~= "html" then return nil end
  local imgs = {}
  for tag in el.text:gmatch("<img[^>]*>") do
    local img = image_from(tag)
    if img then table.insert(imgs, img) end
  end
  if #imgs > 0 then
    return pandoc.Para(imgs)
  end
  return {}
end

function Div(el)
  local align = el.attributes["align"]
  if align == "center" then
    return {
      pandoc.RawBlock("latex", "\\begin{center}"),
      el,
      pandoc.RawBlock("latex", "\\end{center}")
    }
  end
  return nil
end

local function has_image(blocks)
  local found = false
  pandoc.walk_block(pandoc.Div(blocks), {
    Image = function() found = true end
  })
  return found
end

local function fit_images(blocks)
  return pandoc.walk_block(pandoc.Div(blocks), {
    Image = function(img)
      img.attributes.width = nil
      img.attributes.height = nil
      return img
    end
  }).content
end

local function text_len(blocks)
  return #pandoc.utils.stringify(pandoc.Div(blocks))
end

local cover_done = false

function Header(el)
  if cover_done then return nil end
  if pandoc.utils.stringify(el) == "Registro de Versiones del Informe" then
    cover_done = true
    return nil
  end
  return pandoc.Para({ pandoc.Strong(el.content) })
end

function Table(el)
  local widths = el.widths
  local cols = #el.aligns
  if widths[1] == 0 then return nil end

  local image_cols = {}
  local any_image = false
  local lengths = {}
  for c = 1, cols do lengths[c] = el.headers[c] and text_len(el.headers[c]) or 0 end
  for _, row in ipairs(el.rows) do
    for c = 1, cols do
      if row[c] then
        if has_image(row[c]) then
          image_cols[c] = true
          any_image = true
        end
        local l = text_len(row[c])
        if l > lengths[c] then lengths[c] = l end
      end
    end
  end

  for c = 1, cols do
    widths[c] = math.min(lengths[c], 140) + 10
  end

  local min_width = 0.2
  local min_text_width = 0.05
  local total = 0
  for c = 1, cols do total = total + widths[c] end
  for c = 1, cols do widths[c] = widths[c] / total end
  for c = 1, cols do
    if image_cols[c] then
      if widths[c] < min_width then widths[c] = min_width end
    elseif widths[c] < min_text_width then
      widths[c] = min_text_width
    end
  end
  total = 0
  for c = 1, cols do total = total + widths[c] end
  for c = 1, cols do widths[c] = widths[c] / total end

  if any_image then
    for _, row in ipairs(el.rows) do
      for c = 1, cols do
        if row[c] and image_cols[c] then row[c] = fit_images(row[c]) end
      end
    end
  end
  el.widths = widths
  return el
end
