nmap <F7> o printk("MODESTAS: %s %d (%pSR)\n", __func__, __LINE__, (void *)__builtin_return_address(0));<esc>==
map <silent> <F8> : ! tmux send-keys -t ".1" C-c; tmux send-keys -t "ssh-ui-dev:1.0" "make -k -C build/lede package/ubntbox/compile V=s" enter<CR>
map <silent> <F9> : ! "tmux display-popup -d '#{pane_current_path}' -w80% -h40% -E scp -O ubntbox ubnt@192.168.44.207:/tmp; sleep 1" enter <CR>
"set listchars=tab:▸\ ,eol:¬
map <silent> <F10> :set invlist<CR>
