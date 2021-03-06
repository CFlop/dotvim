nnoremap <silent> <S-F12> :TagbarToggle<CR>

let g:tagbar_type_php = {
	\ 'replace' : 1,
	\ 'ctagsargs' : '-f - ',
	\ 'ctagsbin' : 'phptags',
	\ 'sro' : '::',
	\ 'kinds' : [
		\ 'n:namespace:0:1',
		\ 'i:interfaces:0:1',
		\ 'c:classes:0:1',
		\ 'd:constant definitions:0:0',
		\ 'f:functions:0:1',
		\ 'v:variables:0:0',
		\ 'j:javascript functions:0:1'
	\ ],
	\ 'kind2scope' : {
		\ 'c' : 'class',
		\ 'i' : 'interface',
		\ 'n' : 'namespace'
	\ },
	\ 'scope2kind' : {
		\ 'class' : 'c',
		\ 'interface' : 'i',
		\ 'namespace' : 'n'
	\ }
\ }
