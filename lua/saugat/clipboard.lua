if vim.fn.has('unix') == 1 then
	print("Has")
	vim.opt.clipboard = "unnamedplus"
	vim.g.clipboard = {
		name = 'win32yank.exe',
		copy = {
			['+'] = 'win32yank.exe -i --crlf',
			['*'] = 'win32yank.exe -i --crlf',
		},
		paste = {
			['+'] = 'win32yank.exe -o --lf',
			['*'] = 'win32yank.exe -o --lf',
		},
		cahche_enabled = 0,
	}
end
