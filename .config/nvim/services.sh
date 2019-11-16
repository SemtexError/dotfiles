# !/bin/bash
# Install required software

install_software () {
    # Arch linux
    if [ -f "/usr/bin/pacman" ]; then 
       if ! pacman -Qi $1 >/dev/null 2>&1; then
            sudo pacman -S $1 --noconfirm
        fi
    fi

    # Debian/Ubuntu
    if [ -f "/usr/bin/apt" ]; then
       if [ -f "/usr/bin/dpkg" ]; then
           if ! dpkg -s $1 >/dev/null 2>&1; then
               sudo /usr/bin/apt install $1 -y
           fi
       fi
    fi
}

install_npm () {
    if [ -f "/usr/bin/npm" ]; then
       if ! npm list --depth 1 --global $1 > /dev/null 2>&1; then
           /usr/bin/npm i -g $1
       fi
    fi

}

install_software ripgrep
install_npm vue-language-server