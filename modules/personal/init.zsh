# Personal alias
alias ls='ls -GF --color'
alias ll='ls -GFhl --color'
alias grep='grep --color'
alias m='make'
alias mm='make -j4'
alias e='vim'

# Directory movement
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias gdbtui='gdb -tui'
alias ipython='ipython --no-confirm-exit'
#
# Function definitions
function mkcd {
    mkdir -p $1 && cd $1
}

function pkg_srpm {
    basename `$1 srpm | grep Wrote | cut -d' ' -f 2`
}

function pkg_sb {
    build_tool=$1
    shift
    srpm=$(pkg_srpm $build_tool)
    $build_tool scratch-build --srpm $srpm $@
}

function fedpkg_srpm {
    pkg_srpm fedpkg $@
}

function fedpkg_sb {
    pkg_sb fedpkg $@
}

function rhpkg_srpm {
    pkg_srpm rhpkg $@
}

function rhpkg_sb {
    pkg_sb rhpkg $@
}

source ${0:h}/vim/ycm.zsh
