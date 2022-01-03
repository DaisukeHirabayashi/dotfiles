for t in sort(split(glob('~/.config/nvim/enabled/*.vim'),'\n'))
        exe 'source' t
endfor
