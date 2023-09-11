local dashboard = require("alpha.themes.dashboard")

dashboard.section.buttons.val = {
	dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
	dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
	dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.opts.layout[1].val = 8

require("alpha").setup(dashboard.opts)
