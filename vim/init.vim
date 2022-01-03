for t in sort(split(glob('~/.config/nvim/enabled/*.vim'),'\n'))
        exe 'source' t
endfor

for f in sort(split(glob('~/.config/nvim/plugins/*.vim'),'\n'))
	exe 'source' f
endfor
