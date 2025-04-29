_tvm()
{
    local cur="${COMP_WORDS[COMP_CWORD]}"
    # the commented out line will tab complete with every available version for download, instead of every downloaded version
    # local ALL_VERSIONS=$(curl -s https://releases.hashicorp.com/terraform/ | sed -nE 's/.*>terraform_(.*)<\/a>/\1/p')
    local ALL_VERSIONS=$(ls --color=no ~/.tvm/versions)
    COMPREPLY=( $(compgen -W "$ALL_VERSIONS" -- ${cur}) )
}
complete -F _tvm tvm

if [ ! -d ~/.tvm/bin ] || [ ! -f ~/.tvm/bin/tvm ] || [ "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/tvm" != "$(readlink -f ~/.tvm/bin/tvm)" ]; then
    mkdir -p ~/.tvm/bin
    ln -sf "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/tvm" ~/.tvm/bin/tvm
fi
export PATH="$PATH:~/.tvm/bin"

