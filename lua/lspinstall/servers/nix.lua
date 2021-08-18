local config = require"lspinstall/util".extract_config("rnix")
config.default_config.cmd = { "rnix-lsp" }

return vim.tbl_extend('error', config, {
  install_script = [[
  os=$(uname -s | tr "[:upper:]" "[:lower:]")

  case $os in
  linux)
  platform="Linux"
  ;;
  darwin)
  platform="macOS"
  ;;
  esac

  true
  ]]
})
