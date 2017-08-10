[ "$DEBUG" == 1 ] && echo -e "Entrando a .bash_aliases"

# shellcheck source=${HOME}/.bash_aliases.local
# shellcheck disable=SC1091
if [ -f "${HOME}"/.bash_aliases.local ]; then
    . "${HOME}"/.bash_aliases.local
fi

[ "$DEBUG" == 1 ] && echo -e "Saliendo de .bash_aliases"

# END
