" Make Ranger replace netrw and be the file explorer
 let g:rnvimr_ex_enable = 1

 let g:rnvimr_enable_picker = 1

 let g:rnvimr_draw_border = 1

 let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'

let g:rnvimr_enable_bw = 1

let g:rnvimr_presets = [{}]

let g:rnvimr_border_attr = {'fg': 61, 'bg': -1}

nmap <space>r :RnvimrToggle<CR>
