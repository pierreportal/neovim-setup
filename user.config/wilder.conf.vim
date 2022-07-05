
call wilder#setup({'modes': [':',  '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
		\ 'pumblend':20,
		\ 'border': 'rounded',
		\ 'max_height': '75%',
		\ 'min_height': 0,
		\ 'prompt_position': 'bottom',
		\ 'reverse': 0,
		\ 'highlighter': wilder#basic_highlighter(),
		\ 'highlights': {
		\   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
		\ }
\ })))
