return function()
  local status_ok, indent = pcall(require, "indent-o-matic")
  if not status_ok then
    return
  end

  indent.setup({
    -- Number of lines without indentation before giving up (-1 for infinite)
    max_lines = 2048,
    -- Space indentations that should be detected
    standard_widths = { 2, 3, 4, 8 },
    -- Skip multi-line comments and strings (more accurate detection but less performant)
    skip_multiline = true,
  })
end
