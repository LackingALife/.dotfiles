if status is-interactive
    # Commands to run in interactive sessions can go here
		#fortune
end

set fish_greeting 

export SDL_VIDEODRIVER=x11
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=xcb
export XDG_CURRENT_DESKTOP=i3
export XDG_SESSION_DESKTOP=i3
export EDITOR=nvim
export VISUAL=nvim
export SYSTEMD_EDITOR=nvim

alias timkb="setxkbmap -layout us,pt -variant colemak,"
alias peterkb="setxkbmap -layout us,pt"

alias ls="exa --icons=auto"
alias ll="exa --icons=auto -l"
alias la="exa --icons=auto -a"
alias lla="exa --icons=auto -l -a"
alias fe="ranger"

alias celeste="~/peterpen/games/Celeste/nstart.sh"

thefuck --alias | source

zoxide init fish | source

function bind_bang
    switch (commandline -t)[-1]
        case "!"
            commandline -t -- $history[1]
            commandline -f repaint
        case "*"
            commandline -i !
    end
end

function bind_dollar
    switch (commandline -t)[-1]
        case "!"
            commandline -f backward-delete-char history-token-search-backward
        case "*"
            commandline -i '$'
    end
end

function fish_user_key_bindings
    bind ! bind_bang
    bind '$' bind_dollar
end

