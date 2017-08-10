[ "$DEBUG" == 1 ] && echo -e "Entrando a .bash_logout"

if [ -f "${HOME}"/.bash_logout.local ]; then
    # shellcheck source=${HOME}/.bash_logout.local
    # shellcheck disable=SC1091
    . "${HOME}"/.bash_logout.local
fi

# when leaving the console clear the screen to increase privacy

if [ "${SHLVL}" = 1 ]; then
    # [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
    [ "$DEBUG" == 1 ] && echo -e "Saliendo de .bash_logout"
    echo -e "Descomentar en .bash_logout para limpiar la terminal al salir."
fi

# END
