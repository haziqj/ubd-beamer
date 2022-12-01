Span = function (el)
  -- store the attributes for color and highlight
  color = el.attributes['color']
  highlight = el.attributes['highlight']
  
  -- create a function to check for emptiness
  local function isempty(s)
    return s == nil or s == ''
  end
  
  -- underline stuff that ends in {.underline}
  if el.classes[1] == "uline" then
    table.insert(
      el.content, 1, 
      pandoc.RawInline('latex', '\\underline{')
    )
    table.insert(
      el.content, 
      pandoc.RawInline('latex', '}')
    )
  end

  -- highlight stuff that ends in {.correction}
  if el.classes[1] == "correction" then
    table.insert(
      el.content, 1, 
      pandoc.RawInline('latex', '\\hl{')
    )
    table.insert(
      el.content, 
      pandoc.RawInline('latex', '}')
    )
  end

  -- highlight stuff that ends in {.correction}
  if el.classes[1] == "blfootnote" then
    table.insert(
      el.content, 1, 
      pandoc.RawInline('latex', '\\blfootnote{')
    )
    table.insert(
      el.content, 
      pandoc.RawInline('latex', '}')
    )
  end
  
  -- highlight stuff with {highlight = "some-color"}
  if not isempty(highlight) then
    -- remove highlight attributes
    el.attributes['highlight'] = nil
    -- encapsulate in latex code
    table.insert(
      el.content, 1,
      pandoc.RawInline('latex', '\\sethlcolor{' ..highlight..'}\\hl{')
    )
    table.insert(
      el.content,
      pandoc.RawInline('latex', '}\\sethlcolor{correctioncolor}')
    )
  end
  
  -- color text with {color = "some-color"}
  if not isempty(color) then
    -- remove color attributes
    el.attributes['color'] = nil
    -- encapsulate in latex code
    table.insert(
      el.content, 1,
      pandoc.RawInline('latex', '\\textcolor{'..color..'}{')
    )
    table.insert(
      el.content,
      pandoc.RawInline('latex', '}')
    )
  end

  return el.content 
end