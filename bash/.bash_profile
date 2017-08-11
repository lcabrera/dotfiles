# shellcheck source=${HOME}/.profile
# shellcheck disable=SC1091
#if [ -f "${HOME}"/.profile ]; then
#    source "${HOME}"/.profile
#fi

[ "$DEBUG" == 1 ] && echo -e "Entrando a .bash_profile"

# Keychain
# ~~~~~~~~
if [ -f "/usr/bin/keychain" ]; then
    /usr/bin/keychain --agents gpg,ssh --ignore-missing -k others --eval id_rsa id_dsa --quiet > /dev/null 2>&1
    # shellcheck source=${HOME}/.keychain/${HOSTNAME}-sh
    # shellcheck disable=SC1091
    source "${HOME}/.keychain/${HOSTNAME}-sh"
else
    command -v keychain >/dev/null 2>&1 || { echo -e "apt install keychain\n\nSaliendo.\n" >&2; }
fi

[ "$DEBUG" == 1 ] && echo -e "Saliendo de .bash_profile"

# END
