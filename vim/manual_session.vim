let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
inoremap <silent> <Plug>(fzf-maps-i) :call fzf#vim#maps('i', 0)
inoremap <expr> <Plug>(fzf-complete-buffer-line) fzf#vim#complete#buffer_line()
inoremap <expr> <Plug>(fzf-complete-line) fzf#vim#complete#line()
inoremap <expr> <Plug>(fzf-complete-file-ag) fzf#vim#complete#path("ag -l -g ''")
inoremap <expr> <Plug>(fzf-complete-file) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -type f -print -o -type l -print | sed 's:^..::'")
inoremap <expr> <Plug>(fzf-complete-path) fzf#vim#complete#path("find . -path '*/\.*' -prune -o -print | sed '1d;s:^..::'")
inoremap <expr> <Plug>(fzf-complete-word) fzf#vim#complete#word()
map  :NERDTreeToggle
map  :FZF
map  :tabp 
map  :tabn 
map  :tabnew
vmap  <Plug>(expand_region_shrink)
nmap  j <Plug>(CommandTJump)
nmap  b <Plug>(CommandTBuffer)
nmap  t <Plug>(CommandT)
nmap  nop :set nopaste
nmap  np :set paste
nmap    V
vmap  P "+P
vmap  p "+p
nmap  P "+P
nmap  p "+p
vmap  d "+d
vmap  y "+y
nnoremap  w :w
map <silent> \== :silent call AutoFormatRails()
nmap cgc <Plug>ChangeCommentary
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
map q: :q
omap s :normal vs
vnoremap <silent> s //e=&selection=='exclusive'?'+1':'':call histdel('search',-1)|let @/=histget('search',-1)gv
vmap v <Plug>(expand_region_expand)
noremap <silent> <Plug>AirlineSelectNextTab :exe repeat(':tabn|', v:count1)
noremap <silent> <Plug>AirlineSelectPrevTab gT
noremap <silent> <Plug>AirlineSelectTab9 :9tabn
noremap <silent> <Plug>AirlineSelectTab8 :8tabn
noremap <silent> <Plug>AirlineSelectTab7 :7tabn
noremap <silent> <Plug>AirlineSelectTab6 :6tabn
noremap <silent> <Plug>AirlineSelectTab5 :5tabn
noremap <silent> <Plug>AirlineSelectTab4 :4tabn
noremap <silent> <Plug>AirlineSelectTab3 :3tabn
noremap <silent> <Plug>AirlineSelectTab2 :2tabn
noremap <silent> <Plug>AirlineSelectTab1 :1tabn
nnoremap <SNR>71_: :=v:count ? v:count : ''
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
onoremap <silent> <Plug>(fzf-maps-o) :call fzf#vim#maps('o', 0)
xnoremap <silent> <Plug>(fzf-maps-x) :call fzf#vim#maps('x', 0)
nnoremap <silent> <Plug>(fzf-maps-n) :call fzf#vim#maps('n', 0)
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
nmap <silent> <Plug>CommentaryUndo <Plug>Commentary<Plug>Commentary
nnoremap <silent> <Plug>(CommandTTag) :CommandTTag
nnoremap <silent> <Plug>(CommandTSearch) :CommandTSearch
nnoremap <silent> <Plug>(CommandTMRU) :CommandTMRU
nnoremap <silent> <Plug>(CommandTLine) :CommandTLine
nnoremap <silent> <Plug>(CommandTCommand) :CommandTCommand
nnoremap <silent> <Plug>(CommandTJump) :CommandTJump
nnoremap <silent> <Plug>(CommandTHistory) :CommandTHistory
nnoremap <silent> <Plug>(CommandTHelp) :CommandTHelp
nnoremap <silent> <Plug>(CommandTBuffer) :CommandTBuffer
nnoremap <silent> <Plug>(CommandT) :CommandT
imap 	 <Plug>SuperTabForward
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set cpoptions=aABceFs$
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set laststatus=2
set nomodeline
set operatorfunc=<SNR>26_go
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,~/.vim/bundles/repos/github.com/junegunn/fzf,~/.vim/bundles/repos/github.com/powerline/fonts,~/.vim/bundles/repos/github.com/scrooloose/nerdtree,~/.vim/bundles/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,~/.vim/bundles/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after,~/.vim/bundles/repos/github.com/Shougo/dein.vim
set shiftwidth=2
set showtabline=2
set smartindent
set smarttab
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
set tabstop=2
set textwidth=80
set window=45
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/repos/drb-student-los
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +39 app/applicant/assets/javascripts/components/dashboard/partials/StudentLoanPayoffItem.jsx
badd +1 app/applicant/assets/javascripts/components/dashboard/partials/BankInformationForm.jsx
badd +0 db/migrate/20170620151812_add10_day_payoff_and_others_to_student_loan.rb
badd +0 app/models/student_loan.rb
badd +60 app/applicant/assets/javascripts/components/application/partials/EditPayoffsModal.jsx
badd +71 app/applicant/assets/javascripts/components/dashboard/partials/SupportingDocumentsList.jsx
badd +280 app/applicant/assets/javascripts/components/dashboard/partials/UploadDocumentModal.jsx
badd +71 app/applicant/assets/javascripts/components/dashboard/partials/CompleteApplicationForm.jsx
badd +128 app/applicant/assets/javascripts/components/fieldsets/BorrowerViewFieldset.jsx
badd +34 db/seeds.rb
badd +0 app/applicant/assets/javascripts/components/fieldsets/HouseholdAssetsFieldset.jsx
badd +91 app/applicant/assets/javascripts/components/fieldsets/ProfileFieldset.jsx
badd +6 app/applicant/assets/javascripts/components/fieldsets/payoff_statement/StudentLoanModal.jsx
badd +50 app/applicant/assets/javascripts/components/fieldsets/LoanServicerFieldset.jsx
badd +62 app/applicant/assets/javascripts/components/fieldsets/InitialEmploymentFieldset.jsx
badd +33 app/applicant/assets/javascripts/components/fieldsets/ChildSupportFieldset.jsx
badd +90 app/applicant/assets/javascripts/components/fieldsets/LaterEducationFieldset.jsx
badd +491 app/applicant/assets/javascripts/components/application/partials/LoanOptionsForm.jsx
badd +0 app/applicant/assets/javascripts/components/addons/FormElementInput.jsx
badd +20 app/applicant/assets/javascripts/actions/loan.js
badd +2 app/applicant/assets/javascripts/api/loans.js
badd +23 app/applicant/assets/javascripts/actions/bank.js
badd +0 app/applicant/assets/javascripts/api/bank.js
badd +0 app/applicant/assets/javascripts/api/student_loans.js
badd +0 app/applicant/assets/javascripts/components/dashboard/partials/LoanOfferForm.jsx
badd +99 config/locales/en.yml
badd +1 app/applicant/assets/javascripts/components/fieldsets/PayoffStatementFieldset.jsx
badd +17 app/applicant/assets/javascripts/components/dashboard/EditDocument.jsx
argglobal
silent! argdel *
edit app/applicant/assets/javascripts/components/dashboard/partials/StudentLoanPayoffItem.jsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 101 + 102) / 204)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 61 - ((30 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 025|
wincmd w
argglobal
edit app/applicant/assets/javascripts/components/dashboard/partials/BankInformationForm.jsx
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 16 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 013|
wincmd w
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 101 + 102) / 204)
tabedit app/applicant/assets/javascripts/components/addons/FormElementInput.jsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 02|
lcd ~/repos/drb-student-los
tabedit ~/repos/drb-student-los/app/applicant/assets/javascripts/api/bank.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 69 + 102) / 204)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 69 + 102) / 204)
exe 'vert 4resize ' . ((&columns * 31 + 102) / 204)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/repos/drb-student-los
wincmd w
argglobal
edit ~/repos/drb-student-los/app/applicant/assets/javascripts/api/loans.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((18 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 0
lcd ~/repos/drb-student-los
wincmd w
argglobal
edit ~/repos/drb-student-los/app/applicant/assets/javascripts/api/student_loans.js
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(3)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 04|
lcd ~/repos/drb-student-los
wincmd w
argglobal
enew
file ~/repos/drb-student-los/NERD_tree_3
let s:cpo_save=&cpo
set cpo&vim
nnoremap <buffer> <silent> <NL> :call nerdtree#ui_glue#invokeKeyMap("<C-j>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap("<C-k>")
nnoremap <buffer> <silent>  :call nerdtree#ui_glue#invokeKeyMap(g:NERDTreeMapActivateNode)
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nnoremap <buffer> <silent> ? :call nerdtree#ui_glue#invokeKeyMap("?")
nnoremap <buffer> <silent> A :call nerdtree#ui_glue#invokeKeyMap("A")
nnoremap <buffer> <silent> B :call nerdtree#ui_glue#invokeKeyMap("B")
nnoremap <buffer> <silent> CD :call nerdtree#ui_glue#invokeKeyMap("CD")
nnoremap <buffer> <silent> C :call nerdtree#ui_glue#invokeKeyMap("C")
nnoremap <buffer> <silent> D :call nerdtree#ui_glue#invokeKeyMap("D")
nnoremap <buffer> <silent> F :call nerdtree#ui_glue#invokeKeyMap("F")
nnoremap <buffer> <silent> I :call nerdtree#ui_glue#invokeKeyMap("I")
nnoremap <buffer> <silent> J :call nerdtree#ui_glue#invokeKeyMap("J")
nnoremap <buffer> <silent> K :call nerdtree#ui_glue#invokeKeyMap("K")
nnoremap <buffer> <silent> O :call nerdtree#ui_glue#invokeKeyMap("O")
nnoremap <buffer> <silent> P :call nerdtree#ui_glue#invokeKeyMap("P")
nnoremap <buffer> <silent> R :call nerdtree#ui_glue#invokeKeyMap("R")
nnoremap <buffer> <silent> T :call nerdtree#ui_glue#invokeKeyMap("T")
nnoremap <buffer> <silent> U :call nerdtree#ui_glue#invokeKeyMap("U")
nnoremap <buffer> <silent> X :call nerdtree#ui_glue#invokeKeyMap("X")
nnoremap <buffer> <silent> cd :call nerdtree#ui_glue#invokeKeyMap("cd")
nnoremap <buffer> <silent> e :call nerdtree#ui_glue#invokeKeyMap("e")
nnoremap <buffer> <silent> f :call nerdtree#ui_glue#invokeKeyMap("f")
nnoremap <buffer> <silent> gi :call nerdtree#ui_glue#invokeKeyMap("gi")
nnoremap <buffer> <silent> gs :call nerdtree#ui_glue#invokeKeyMap("gs")
nnoremap <buffer> <silent> go :call nerdtree#ui_glue#invokeKeyMap("go")
nmap <buffer> gf <Plug>RailsFind
nnoremap <buffer> <silent> i :call nerdtree#ui_glue#invokeKeyMap("i")
nnoremap <buffer> <silent> m :call nerdtree#ui_glue#invokeKeyMap("m")
nnoremap <buffer> <silent> o :call nerdtree#ui_glue#invokeKeyMap("o")
nnoremap <buffer> <silent> p :call nerdtree#ui_glue#invokeKeyMap("p")
nnoremap <buffer> <silent> q :call nerdtree#ui_glue#invokeKeyMap("q")
nnoremap <buffer> <silent> r :call nerdtree#ui_glue#invokeKeyMap("r")
nnoremap <buffer> <silent> s :call nerdtree#ui_glue#invokeKeyMap("s")
nnoremap <buffer> <silent> t :call nerdtree#ui_glue#invokeKeyMap("t")
nnoremap <buffer> <silent> u :call nerdtree#ui_glue#invokeKeyMap("u")
nnoremap <buffer> <silent> x :call nerdtree#ui_glue#invokeKeyMap("x")
nnoremap <buffer> <silent> <2-LeftMouse> :call nerdtree#ui_glue#invokeKeyMap("<2-LeftMouse>")
nnoremap <buffer> <silent> <LeftRelease> <LeftRelease>:call nerdtree#ui_glue#invokeKeyMap("<LeftRelease>")
nnoremap <buffer> <silent> <MiddleRelease> :call nerdtree#ui_glue#invokeKeyMap("<MiddleRelease>")
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'nerdtree'
setlocal filetype=nerdtree
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(4)
setlocal suffixesadd=.rb
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'nerdtree'
setlocal syntax=nerdtree
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal winfixwidth
setlocal nowrap
setlocal wrapmargin=0
lcd ~/repos/drb-student-los
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 69 + 102) / 204)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 69 + 102) / 204)
exe 'vert 4resize ' . ((&columns * 31 + 102) / 204)
tabedit ~/repos/drb-student-los/app/applicant/assets/javascripts/components/fieldsets/payoff_statement/StudentLoanModal.jsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 102 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
102
normal! 0
lcd ~/repos/drb-student-los
tabedit ~/repos/drb-student-los/app/applicant/assets/javascripts/components/application/partials/EditPayoffsModal.jsx
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 101 + 102) / 204)
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 73 - ((39 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
73
normal! 011|
wincmd w
argglobal
edit ~/repos/drb-student-los/app/applicant/assets/javascripts/components/dashboard/partials/UploadDocumentModal.jsx
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 291 - ((33 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
291
normal! 013|
lcd ~/repos/drb-student-los
wincmd w
exe 'vert 1resize ' . ((&columns * 102 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 101 + 102) / 204)
tabedit ~/repos/drb-student-los/app/applicant/assets/javascripts/components/fieldsets/HouseholdAssetsFieldset.jsx
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> gf <Plug>RailsTabFind
nmap <buffer>  <Plug>RailsSplitFind
nmap <buffer> f <Plug>RailsSplitFind
nmap <buffer> gf <Plug>RailsFind
cmap <buffer>  <Plug><cfile>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,!^F,o,O,e,0]
setlocal cinoptions=j1,J1
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=//%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'javascript'
setlocal filetype=javascript
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=javascriptcomplete#CompleteJS
setlocal path=.,~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,/usr/include,
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'javascript'
setlocal syntax=javascript
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((33 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 03|
lcd ~/repos/drb-student-los
tabedit ~/repos/drb-student-los/app/models/student_loan.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
cmap <buffer>  <Plug><cfile>
cmap <buffer>  <Plug><cword>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*def\\s\\+\\(self\\.\\)\\=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%\\S%\\+\ \ %#%[cefi]%[rxod]%[eir]%[a-z]%#%\\x1b[0m\ %\\+%\\S%\\+%$%\\&%\\x1b%\\S%\\+\ \ %#%m%\\>%\\x1b[0m\ \ %#%f,%\\s\ %#%[cefi]%[rxod]%[eir]%[a-z]%#\ %\\+%\\S%\\+%$%\\&%\\s\ %#%m%\\>\ \ %#%f,Overwrite%.%#%\\S%\\+\ \ %#%m%\\x1b[0m\ \ %#%f,%-GOverwrite%.%#\"h\"%.%#,%+GStarted\ %\\u%\\u%.%#,%+GCompleted\ %\\d%\\d%\\d%.%#,%.%#rails\ test\ %f:%l,%+GCurrent\ version:%.%#,%+G\ %#Status\ %#Migration\ ID%.%#,%+G\ The\ fixture\ ID\ for\ %.%#,%f:\ %s\ (%m)%$%\\&%.%#/fixtures/%.%#(%\\d%\\+),%+G\ %#Prefix\ %#Verb%.%#,%+G\ %#Code\ LOC:\ %.%#,%+GAbout\ your\ application's\ environment,%+Grun\ %\\S%#::Application.routes,%+Irails\ %\\S%\\+%\\s%\\+#\ %.%#,%+Eruby:%.%#(LoadError),%+EUsage:%.%#,%+ECould\ not\ find\ generator%.%#,%+EType\ 'rails'\ for\ help.,%D(in\ %f),%\\s%#from\ %f:%l:%m,%\\s%#from\ %f:%l:,%\\s%##\ %f:%l:%m%\\&%.%#%\\D:%.%#,%\\s%##\ %f:%l%\\&%.%#%\\D:%.%#,%\\s%#[%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:\ %#%m%\\&%.%#%\\D:%.%#,%\\s%#%f:%l:,%m\ [%f:%l]:,%+Erake\ aborted!,%+EDon't\ know\ how\ to\ build\ task\ %.%#,%+Einvalid\ option:%.%#,%+Irake\ %\\S%\\+%\\s%\\+#\ %.%#,chdir\ /home/dj_khaled/repos/drb-student-los
setlocal expandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=^\\s*\\<\\(load\\>\\|require\\>\\|autoload\\s*:\\=[\"']\\=\\h\\w*[\"']\\=,\\)
setlocal includeexpr=rails#includeexpr(v:fname)
setlocal indentexpr=GetRubyIndent(v:lnum)
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,:,.,=end,=else,=elsif,=when,=ensure,=rescue,==begin,==end,=private,=protected,=public
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=bin/rake
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=~/repos/drb-student-los/lib,~/repos/drb-student-los/vendor,~/repos/drb-student-los/app/models/concerns,~/repos/drb-student-los/app/controllers/concerns,~/repos/drb-student-los/app/controllers,~/repos/drb-student-los/app/helpers,~/repos/drb-student-los/app/mailers,~/repos/drb-student-los/app/models,~/repos/drb-student-los/app/jobs,~/repos/drb-student-los/app/*,~/repos/drb-student-los/app/views,~/repos/drb-student-los/test,~/repos/drb-student-los/test/unit,~/repos/drb-student-los/test/functional,~/repos/drb-student-los/test/integration,~/repos/drb-student-los/test/controllers,~/repos/drb-student-los/test/helpers,~/repos/drb-student-los/test/mailers,~/repos/drb-student-los/test/models,~/repos/drb-student-los/test/jobs,~/repos/drb-student-los/spec,~/repos/drb-student-los/spec/controllers,~/repos/drb-student-los/spec/helpers,~/repos/drb-student-los/spec/mailers,~/repos/drb-student-los/spec/models,~/repos/drb-student-los/spec/views,~/repos/drb-student-los/spec/lib,~/repos/drb-student-los/spec/features,~/repos/drb-student-los/spec/requests,~/repos/drb-student-los/spec/integration,~/repos/drb-student-los/spec/jobs,~/repos/drb-student-los/vendor/plugins/*/lib,~/repos/drb-student-los/vendor/plugins/*/test,~/repos/drb-student-los/vendor/rails/*/lib,~/repos/drb-student-los/vendor/rails/*/test,~/repos/drb-student-los,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/2.3.0,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-linux,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby/2.3.0,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-linux,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby,~/.rvm/rubies/ruby-2.3.1/lib/ruby/2.3.0,~/.rvm/rubies/ruby-2.3.1/lib/ruby/2.3.0/x86_64-linux
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=~/repos/drb-student-los/tags,~/repos/drb-student-los/tmp/tags,./tags,./TAGS,tags,TAGS,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/2.3.0/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/2.3.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/site_ruby/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby/2.3.0/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby/2.3.0/x86_64-linux/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/vendor_ruby/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/2.3.0/tags,~/.rvm/rubies/ruby-2.3.1/lib/ruby/2.3.0/x86_64-linux/tags
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
tabnext 3
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
