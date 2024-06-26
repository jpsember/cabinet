export PATH=.:$PATH

# Set prompt
export PS1="\W} "

# Enhance the 'cd' command; push old directories onto a stack.
# These additional commands are now available:
#   f    : flip between current and last directory
#   p    : return (pop) to last directory
#
pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
}

pushd_builtin()
{
  builtin pushd > /dev/null
}

popd()
{
  builtin popd > /dev/null
}

alias cd='pushd'
alias p='popd'
alias hd="hexdump -Cv"
alias ls="ls -l"
alias makeexe="chmod u+x"
alias mv="mv -i"
alias show="unzip -l"
alias hist="history | cut -c 8-"

# Remove duplicate entries from PATH
#
PATH=`awk -F: '{for(i=1;i<=NF;i++){if(!($i in a)){a[$i];printf s$i;s=":"}}}'<<<$PATH`

