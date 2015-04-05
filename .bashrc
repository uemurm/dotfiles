#
# Executed for interactive non-login shells
#
export PATH="$HOME/bin:$PATH"

#
# Set variables which control the behaviour of Bash
#

# A command which matches with a directory is fed to cd command.
shopt -s autocd 
# PATH won't be searched when command completion was tried for a null line.
shopt -s no_empty_cmd_completion

source .alias.bash
source .complete.bash
