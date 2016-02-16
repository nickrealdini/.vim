#export https_proxy=http://192.168.0.220:3128
export PATH="/usr/local/php/bin:/usr/local/mysql/bin:$PATH"
export CLICOLOR=1
# Colors for Dark Terminal Themes
export LSCOLORS=GxFxCxDxBxegedabagaced
# Colors for Light Terminal Themes
#export LSCOLORS=ExFxBxDxCxegedabagacad

# MacPorts Installer addition on 2013-09-17_at_10:26:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# NOTE:
# OS X doesn't read .bashrc file on bash start. 
# Instead, it reads the following files (in the following order):
# /etc/profile
# ~/.bash_profile
# ~/.bash_login
# ~/.profile
if [ -f ~/.bash_rc  ]; then
	. ~/.bash_rc
fi
export PATH="/usr/local/sbin:$PATH"
HISTFILESIZE=10000000
