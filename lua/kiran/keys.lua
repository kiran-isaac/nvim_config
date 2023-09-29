-- Vimspector
vim.cmd([[
	nmap <F6> <cmd>call vimspector#ToggleBreakpoint()<cr>
	nmap <F5> <cmd>call vimspector#Launch()<cr>
	nmap <F8> <cmd>call vimspector#Reset()<cr>
	nmap <F9> <cmd>call vimspector#StepOver()<cr>")
	nmap <F10> <cmd>call vimspector#StepInto()<cr>")
	nmap <F12> <cmd>call vimspector#StepOut()<cr>")
	map('n', "Dw", ":call vimspector#AddWatch()<cr>")
	map('n', "De", ":call vimspector#Evaluate()<cr>")
]])
