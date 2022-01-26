if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}[ \[\033[01;36m\]\w\[\033[00m\] ] '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][J]\[\033[00m\]\[\033[01;34m\]\w\[\033[00m\] '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\[\033[00m\]\[\033[01;34m\]\w\[\033[01;32m\]]\[\033[00m\] '

else
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][J]\[\033[00m\]\[\033[01;34m\]\w\[\033[00m\] '
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\[\033[00m\]\[\033[01;34m\]\w\[\033[01;32m\]]\[\033[00m\] '
    PS1='${debian_chroot:+($debian_chroot)}[ \[\033[01;36m\]\w\[\033[00m\] ] '
    # PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    #PS1='\w\ '
fi



# ...
# ...
# ...

. ~/.local/dotfiles/bash_alias
. ~/.local/dotfiles/bash_export


n ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}

#preview de texto de nnn --> alt+v o ;+v  Los plugins se separan por ;
export NNN_PLUG='v:preview-tui'



g(){
   w3m "https://google.com/search?q=$*"
}
