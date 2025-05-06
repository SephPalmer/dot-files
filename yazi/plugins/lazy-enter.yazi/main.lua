--- @sync entry
local function entry(_, job)
  local h = cx.active.current.hovered
  if not h then return end

  if h.cha.is_dir then
    ya.manager_emit("enter", {})
  else
    ya.manager_emit("open", job.args)
  end
end

return { entry = entry }
