set tabstop=4
syntax on
set number
hi LineNr ctermfg=blue ctermbg=black
set smartindent
hi Pmenu ctermbg=black ctermfg=blue
hi PmenuSel ctermfg=black ctermbg=blue
set cursorline
hi cursorline cterm=none term=none
hi CursorLine guibg=#303000 ctermbg=234
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
set showmatch
set showcmd
set scrolloff=10 
