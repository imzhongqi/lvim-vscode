return function()
  local status_ok, flit = pcall(require, "flit")
  if not status_ok then
    return
  end
  
  flit.setup {
    keys = { f = 'f', F = 'F', t = 't', T = 'T' },
    -- A string like "nv", "nvo", "o", etc.
    labeled_modes = "v",
    multiline = true,
    -- Like `leap`s similar argument (call-specific overrides).
    -- E.g.: opts = { equivalence_classes = {} }
    opts = {
      highlight_unlabeled_phase_one_targets = true,
      case_sensitive = false,
      equivalence_classes = { ' \t\r\n', },
      safe_labels = { 's', 'f', 'n', 'u', 't' },
    }
  }
  
  require("leap").add_default_mappings()
  require('leap').add_repeat_mappings(';', ',', {
    -- False by default. If set to true, the keys will work like the
    -- native semicolon/comma, i.e., forward/backward is understood in
    -- relation to the last motion.
    relative_directions = true,
    -- By default, all modes are included.
    modes = {'n', 'x', 'o'},
  })

end
