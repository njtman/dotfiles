" Configure jsbeautify plugin
autocmd FileType javascript noremap <buffer> <Leader>b :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <Leader>b :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <Leader>b :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <Leader>b :call CSSBeautify()<cr> 

let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_size = '2'
" html
let g:config_Beautifier['html'] = {}
let g:config_Beautifier['html'].indent_style = 'space'
let g:config_Beautifier['html'].indent_size = '4'
let g:config_Beautifier['html'].brace_style = 'expand'
