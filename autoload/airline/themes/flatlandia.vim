" vim-airline companion theme of flatlandia

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#f0f0f0' , '#505357' , 232 , 192 ] " mode
let s:N2 = [ '#d0d0d0' , '#36393c' , 192 , 236 ] " info
let s:N3 = [ '#86898c' , '#2c2f33' , 192 , 234 ] " statusline
let s:N4 = [ '#f6f080' , 113 ]                   " mode modified

" Insert mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
" Very bright blue: let s:I1 = [ '#f0f0f0' , '#1093f3' , 232 , 192 ] " mode
let s:I1 = [ '#f0f0f0' , '#3498DB' , 232 , 192 ] " mode
let s:I2 = [ '#d0d0d0' , '#36393c' , 192 , 236 ] " info
let s:I3 = [ '#86898c' , '#2c2f33' , 192 , 234 ] " statusline
let s:I4 = [ '#f6f080' , 113 ]                   " mode modified

" Visual mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:V1 = [ '#ffffff' , '#27AE60' , 232 , 192 ] " mode
let s:V2 = [ '#d0d0d0' , '#36393c' , 192 , 236 ] " info
let s:V3 = [ '#86898c' , '#2c2f33' , 192 , 234 ] " statusline
let s:V4 = [ '#CAE682' , 113 ]                   " mode modified

" Replace mode
let s:R1 = [ '#f0f0f0' , '#E74C3C' , 232 , 192 ] " mode
let s:R2 = [ '#d0d0d0' , '#36393c' , 192 , 236 ] " info
let s:R3 = [ '#86898c' , '#2c2f33' , 192 , 234 ] " statusline
let s:R4 = [ '#fa994b' , 113 ]                   " mode modified

" Paste mode
let s:PA = [ '#94E42C' , 47 ]

" Info modified
let s:IM = [ '#f6d080' , 238 ]

" Inactive mode
let s:IA = [ '#86898c' , s:N3[1] , 243 , s:N3[3] , '' ]

let g:airline#themes#flatlandia#palette = {}

let g:airline#themes#flatlandia#palette.accents = {
      \ 'red': [ '#E5786D' , '' , 203 , '' , '' ],
      \ }

let g:airline#themes#flatlandia#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#flatlandia#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N1[1] , s:N1[2] , s:N1[3] , ''     ] ,
    \ 'airline_b': [ s:IM[0] , s:N2[1] , s:N2[2] , s:N2[3] , ''     ] ,
    \ 'airline_c': [ s:N3[0] , s:N3[1] , s:N3[2] , s:N3[3] , ''     ] }


let g:airline#themes#flatlandia#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#flatlandia#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I1[1] , s:I1[2] , s:I1[3] , ''     ] ,
    \ 'airline_b': [ s:I2[0] , s:I2[1] , s:I2[2] , s:I2[3] , ''     ] ,
    \ 'airline_c': [ s:I3[0] , s:I3[1] , s:I3[2] , s:I3[3] , ''     ] }


let g:airline#themes#flatlandia#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#flatlandia#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V1[1] , s:V1[2] , s:V1[3] , ''     ] ,
    \ 'airline_b': [ s:V2[0] , s:V2[1] , s:V2[2] , s:V2[3] , ''     ] ,
    \ 'airline_c': [ s:V3[0] , s:V3[1] , s:V3[2] , s:V3[3] , ''     ] }


let g:airline#themes#flatlandia#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#flatlandia#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R1[1] , s:R1[2] , s:R1[3] , ''     ] ,
    \ 'airline_b': [ s:R2[0] , s:R2[1] , s:R2[2] , s:R2[3] , ''     ] ,
    \ 'airline_c': [ s:R3[0] , s:I3[1] , s:R3[2] , s:R3[3] , ''     ] }


let g:airline#themes#flatlandia#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#flatlandia#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
" let g:airline#themes#flatlandia#palette.inactive_modified = {
"     \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#flatlandia#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#86898c' , '#2c2f33' , 253 , 234 , ''     ] ,
      \ [ '#86898c' , '#36393c' , 253 , 238 , ''     ] ,
      \ [ '#2c2f33' , '#b8d977' , 232 , 253 , 'bold' ] )

