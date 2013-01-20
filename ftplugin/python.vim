if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

"Set the formatter name and arguments for this filetype
let s:prgname   = "autopep8"
let s:arguments = "/dev/stdin"

"Set the formatprg option, if the formatter is installed
"globally or in the formatters folder
call g:FindFormatter(s:prgname, s:arguments)

"Set indenting behaviour to match with the formatter
set expandtab
set tabstop=4
set shiftwidth=4
