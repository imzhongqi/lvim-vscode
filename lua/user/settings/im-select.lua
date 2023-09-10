return function()
  local status_ok, im_select = pcall(require, "im_select")
  if not status_ok then
    return
  end

  im_select.setup({
    default_im_select       = "com.apple.keylayout.US",
    default_command         = "/usr/local/bin/im-select",
    set_default_events      = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },
    set_previous_events     = { "InsertEnter" },
    keep_quiet_on_no_binary = false,
    async_switch_im         = true
  })
end
