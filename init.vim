" setting
" 文字コードをUTF-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" エスケープシーケンスをjjに設定、上書き保存
inoremap <silent> jj <ESC>:<C-u>w<CR>
" xキーでの削除時にヤンクを上書きしない
noremap PP "0p
noremap x "_x
" TABキーでファイル候補表示
set wildmenu wildmode=list:full
" 起動時にvim-indent-guidesオン
let g:indent_guides_enable_on_vim_startup=1
" yankした文字列をクリップボードにコピー
set clipboard=unnamed

" 見た目系
" 行番号表示
set number
" 現在行強調表示
set cursorline
" 行末の1文字先までカーソル移動可能に
set virtualedit=onemore
" スマートインデント
set smartindent
" 対応する括弧を強調表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" 折り返し時に表示行単位の移動
nnoremap j gj
nnoremap k gk
" 背景透過
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅をスペース2つ分に
set tabstop=2
" 行頭でのTab文字の表示幅をスペース2つ分に
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別しない
set ignorecase
" 検索文字列に大文字が含まれている場合区別する
set smartcase
" 検索文字列入力時に順次対象文字列にヒット
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hls
" ESC連打でハイライト解除
nmap <ESC><ESC> :nohls<CR><ESC>

" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/vviilloovv/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/vviilloovv/.cache/dein')
  call dein#begin('/Users/vviilloovv/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/vviilloovv/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('/Users/vviilloovv/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('/Users/vviilloovv/.config/nvim/dein_lazy.toml', {'lazy': 1})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" End dein Scripts-------------------------
