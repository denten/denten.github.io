-- PDF-only pandoc filter (the website never runs it).
-- 1. Links labelled Poster, Program, Video, Slides or Sketch are dropped,
--    together with the space before them and the period after them.
-- 2. Every other link keeps its text and loses the URL.
-- Source convention: use only those label words for extras.

local function is_extra(link)
  local label = pandoc.utils.stringify(link.content)
  return label:match("^Poster") or label:match("^Program") or label:match("^Video")
      or label:match("^Slides") or label:match("^Sketch")
end

function Inlines(inlines)
  local out = pandoc.Inlines{}
  local i = 1
  while i <= #inlines do
    local el = inlines[i]
    if el.t == "Link" and is_extra(el) then
      while #out > 0 and (out[#out].t == "Space" or out[#out].t == "SoftBreak") do
        out:remove(#out)
      end
      local nxt = inlines[i + 1]
      if nxt and nxt.t == "Str" and nxt.text:sub(1, 1) == "." then
        if #nxt.text > 1 then
          inlines[i + 1] = pandoc.Str(nxt.text:sub(2))
        else
          i = i + 1
        end
      end
    elseif el.t == "Link" then
      out:extend(el.content)
    else
      out:insert(el)
    end
    i = i + 1
  end
  return out
end
