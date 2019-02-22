" -=-=-=-=-=-=-=-=-=-=
" DANMAKENOISE VIMRC |
" -=-=-=-=-=-=-=-=-=-=

" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" BASE SETTINGS \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	set hidden         " TODO
	set encoding=utf-8 " TODO
	set splitbelow     " TODO
	set splitright     " TODO
	set ignorecase
	set smartcase



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" VUNDLE SETUP /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	set nocompatible 		  " required for vundle
	filetype off 			  " required for vundle
	set rtp+=~/.vim/bundle/Vundle.vim " required for vundle
	call vundle#begin()	          " initialize vundle



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" PLUGINS AND PLUGINS SETUP
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	" -=- <AIRLINE> -=-
		" adds a nice utility bar to vim.
		Plugin 'vim-airline/vim-airline'
		Plugin 'vim-airline/vim-airline-themes'

		" choose a theme!
		let g:airline_theme='bubblegum'
	" -=- </AIRLINE> -=-


	" -=- <ALE> -=-
		" the best async linter there is.
		Plugin 'w0rp/ale'

		" set up all the available linters i want to use.
		let g:ale_linters = {'css': ['stylelint'], 'javascript': ['eslint', 'flow'], 'typescript': ['tslint'], 'typescript.tsx': ['tslint']}

		" set up all the available fixers i want to use.
		let g:ale_fixers = {'css': ['stylelint'], 'javascript': ['eslint'], 'typescript': ['tslint'], 'typescript.tsx': ['tslint']}

		" TODO
		let g:airline#extensions#ale#enabled = 1

		" don't fix files when i save please.
		let g:ale_fix_on_save = 0

    let g:ale_javascript_eslint_executable='eslint_d'
    let g:ale_javascript_eslint_use_global = 1
	" -=- </ALE> -=-


	" -=- <GOYO> -=-
		" a nice little zen mode plugin.
		Plugin 'junegunn/goyo.vim'
		let g:goyo_width = 80 " TODO
		let g:goyo_linenr = 1 " TODO
	" -=- </GOYO> -=-


	" -=- <NERDTREE> -=-
		" a very handy file navigator.
		Plugin 'scrooloose/nerdtree'

		" show line numbers in nerdtree.
		let NERDTreeShowLineNumbers=1 " show line numbers in nerdtree.

		" but make them relative line numbers.
		autocmd FileType nerdtree setlocal relativenumber
	" -=- </NERDTREE> -=-


	" -=- <CTRL-P> -=-
		Plugin 'ctrlpvim/ctrlp.vim'

		" don't search in build/module folders
		let g:ctrlp_custom_ignore = 'node_modules\|dist\|flow-typed'
	" -=- </CTRL-P> -=-


	" -=- <DEOPLETE> -=-
		" TODO
		Plugin 'Shougo/deoplete.nvim'

		" run deoplete when vim loads
		let g:deoplete#enable_at_startup = 1
	" -=- </DEOPLETE> -=-


	" -=- <NEOSNIPPET> -=-
		" a nice snippet tool
		Plugin 'Shougo/neosnippet'
		Plugin 'Shougo/neosnippet-snippets'

		" TODO
		let g:neosnippet#enable_completed_snippet = 1
	" -=- </NEOSNIPPER> -=-


	" -=- <MISC PLUGINS> -=-
		Plugin 'HerringtonDarkholme/yats.vim'
		Plugin 'Xuyuanp/nerdtree-git-plugin'
		Plugin 'carlitux/deoplete-ternjs'
		Plugin 'christoomey/vim-tmux-navigator'
		Plugin 'mhartington/nvim-typescript'
		Plugin 'mhinz/vim-grepper'
		Plugin 'pangloss/vim-javascript'
    Plugin 'MaxMEllon/vim-jsx-pretty'
		Plugin 'roman/golden-ratio'
		Plugin 'roxma/nvim-yarp'
		Plugin 'roxma/vim-hug-neovim-rpc'
		Plugin 'styled-components/vim-styled-components'
		Plugin 'ternjs/tern_for_vim'
		Plugin 'terryma/vim-multiple-cursors'
		Plugin 'tommcdo/vim-fubitive'
		Plugin 'tpope/vim-fugitive'
		Plugin 'tpope/vim-rhubarb'
		Plugin 'tpope/vim-surround'
		Plugin 'wokalski/autocomplete-flow'
		Plugin 'airblade/vim-gitgutter'
		Plugin 'scrooloose/nerdcommenter'
		let g:NERDSpaceDelims = 1
    set completeopt-=preview
	" -=- </MISC PLUGINS> -=-



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" VUNDLE FINAL INITIALIZATION \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	call vundle#end()            " required by vundle
	filetype plugin indent on    " required by vundle



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" MISC VIM CONFIG \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	:let &scrolloff = &lines / 4              " TODO
	set bg=dark                               " TODO
	set colorcolumn=80                        " put a ruler on col 80
	set listchars=eol:¬,tab:··,trail:·,nbsp:· " modify whitespace characters
	set nowrap                                " turn off word wrap
	set number                                " turn line numbers on
	set relativenumber                        " show relative line numbers
	set ruler                                 " turn on the ruler at the bottom
	syntax on                                 " turn on syntax highlight



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" KEY BINDINGS /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	imap jk <Esc>
	imap <C-k>     <Plug>(neosnippet_expand_or_jump)
	smap <C-k>     <Plug>(neosnippet_expand_or_jump)
	xmap <C-k>     <Plug>(neosnippet_expand_target)

	:nnoremap gr :GrepperGit <cword> <CR>

	nmap <leader>a :ALEFix<cr>
	nmap <leader>cl :ccl<cr>
	nmap <leader>co :copen<cr>
	nmap <leader>d :TernDef<cr>
	nmap <leader>f :cn<cr>zz
	nmap <leader>g :GrepperGit 
	nmap <leader>gs :call SynStack()<cr>
	nmap <leader>l :SyntasticToggle<cr>
	nmap <leader>n :NERDTreeToggle<cr>
	nmap <leader>ob :OpenBookmark 
	nmap <leader>q :q<cr>
	nmap <leader>rc :! yarn run flow coverage --color %<cr>
	nmap <leader>rp :! yarn run flow coverage %<cr>
	nmap <leader>w :w<cr>
	nmap <leader>z :Goyo<cr>
	nmap <silent> <C-g> <Plug>(ale_next_wrap)
	nnoremap <leader>e :e ~/danmakenoise/vim/.vimrc<CR>
	nnoremap <leader>sv :source ~/.vimrc<CR>



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" WHITESPACE SETTINGS \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	setlocal ts=2 sw=2 sts=2 expandtab

	autocmd Filetype asm              setlocal ts=4 sw=4 sts=4 noexpandtab
	autocmd Filetype css              setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype html             setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype javascript       setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype json             setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype php              setlocal ts=4 sw=4 sts=4 expandtab
	autocmd Filetype reason           setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype typescript       setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype typescript.tsx   setlocal ts=2 sw=2 sts=2 expandtab
	autocmd Filetype typescriptreact  setlocal ts=2 sw=2 sts=2 expandtab



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" COLOR THEME /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	hi Comment gui=italic cterm=italic ctermfg=grey
	hi jsxAttrib gui=italic cterm=italic ctermfg=cyan
	hi jsxEqual ctermfg=cyan

	hi jsxString ctermfg=LightGreen
	hi jsTemplateString ctermfg=LightGreen
	hi jsClassFuncName gui=italic cterm=italic ctermfg=DarkBlue
	hi jsFuncCall gui=italic cterm=italic ctermfg=DarkBlue
	hi jsClassProperty gui=italic cterm=italic ctermfg=DarkBlue
	hi jsxComponentName ctermfg=white

	hi jsClassKeyword gui=italic cterm=italic ctermfg=yellow
	hi jsBraces ctermfg=yellow

	hi jsThis gui=italic cterm=italic ctermfg=red
	hi jsxTagName gui=italic cterm=italic ctermfg=red



" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" CUSTOM FUNCTIONS /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\|
" -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

	function! SynStack()
		if !exists("*synstack")
			return
		endif
		echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
	endfunc
