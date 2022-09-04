#
# profile.sh
#
# Darren Kessner
#

# prompt

# color defines for future
red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
green='\e[0;32m'
GREEN='\e[1;32m'
NC='\e[0m' # No Color
yellow='\e[0;33m'
magenta='\e[0;35m'
YELLOW='\e[1;33m'
MAGENTA='\e[1;35m'
#  export PS1="[${YELLOW}\u${GREEN}@${RED}\H ${CYAN}
#  \t$NC][${MAGENTA}\w$NC](${GREEN}\#$NC)\n\$ "

myshell=$(ps -o comm= $$)
myshell=${myshell/-/}
echo "myshell: $myshell"

if [ "$myshell" = "bash" ] 
then
    export PS1="\[\e[32;1m\]\w\[\e[0m\] $ "
elif [ "$myshell" = "zsh" ]
then
    export PS1='%F{green}%2~%f %# '
else
    echo "unknown shell"
fi

# ls colors

# LSCOLORS: (capital == bold)
#    * a = black
#    * b = red
#    * c = green
#    * d = brown
#    * e = blue
#    * f = magenta
#    * g = cyan
#    * h = light gray
#    * x = default
#   1. DIR
#   2. SYM_LINK
#   3. SOCKET
#   4. PIPE
#   5. EXE
#   6. BLOCK_SP
#   7. CHAR_SP
#   8. EXE_SUID
#   9. EXE_GUID
#  10. DIR_STICKY
#  11. DIR_WO_STICKY

export CLICOLOR=YES
export LSCOLORS="GxGxFxdxHxDxDxhbadExEx"

