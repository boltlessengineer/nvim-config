local ok, lualine = pcall(require, "lualine")
if not ok then
  return
end

lualine.setup {
  options = {
    disabled_filetypes = { "alpha", "dashboard", "toggleterm" },
    globalstatus = true,
  },
  sections = {
    lualine_x = {
      "encoding",
      { "fileformat", icons_enabled = false },
      "filetype",
    },
  },
}
