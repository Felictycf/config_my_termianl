  Added 27 lines, removed 9 lines
       1 -#### COLOUR (Solarized 256)
       1 +#### COLOUR (Gruvbox Dark)
       2
       3 +# Gruvbox colors:
       4 +# bg:      #282828 (colour235)
       5 +# fg:      #ebdbb2 (colour223)
       6 +# yellow:  #d79921 (colour172)
       7 +# orange:  #d65d0e (colour166)
       8 +# red:     #cc241d (colour124)
       9 +# green:   #98971a (colour106)
      10 +# aqua:    #689d6a (colour72)
      11 +# blue:    #458588 (colour66)
      12 +# purple:  #b16286 (colour132)
      13 +# gray:    #928374 (colour102)
      14 +
      15  # default statusbar colors
      16 -set-option -g status-style bg=colour235,fg=colour136,default
      16 +set-option -g status-style bg=colour235,fg=colour223
      17
      18  # default window title colors
      19 -set-window-option -g window-status-style fg=colour244,bg=colour234,dim
      19 +set-window-option -g window-status-style fg=colour102,bg=colour235
      20
      21  # active window title colors
      22 -set-window-option -g window-status-current-style fg=colour166,bg=default,bright
      22 +set-window-option -g window-status-current-style fg=colour214,bg=colour237,bold
      23
      24  # pane border
      25 -set-option -g pane-border-style fg=colour235 #base02
      26 -set-option -g pane-active-border-style fg=colour136,bg=colour235
      25 +set-option -g pane-border-style fg=colour237
      26 +set-option -g pane-active-border-style fg=colour214,bg=default
      27
      28  # message text
      29 -set-option -g message-style bg=colour235,fg=colour166
      29 +set-option -g message-style bg=colour239,fg=colour223
      30
      31  # pane number display
      32 -set-option -g display-panes-active-colour colour33 #blue
      32 +set-option -g display-panes-active-colour colour214 #yellow
      33  set-option -g display-panes-colour colour166 #orange
      34
      35  # clock
      36 -set-window-option -g clock-mode-colour colour64 #green
      36 +set-window-option -g clock-mode-colour colour106 #green
      37 +
      38 +# copy mode highlight
      39 +set-window-option -g mode-style bg=colour239,fg=colour223
      40 +
      41 +# bell
      42 +set-window-option -g window-status-bell-style bg=colour124,fg=colour223

