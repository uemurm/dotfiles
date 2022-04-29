setenv  EDITOR          vim
setenv  VISUAL          vim
setenv  PAGER           less

source  ~/.alias.csh

set path = ( /bin $path ~/bin )

setenv  RUBYLIB         ~/lib

unset   autologout
set     nobeep

#----------------------------------------
# tcsh specific configuration
#----------------------------------------
if($?tcsh)then
    if($?loginsh)then
    else
      dirs -L ~/.cshdirs	# Check this file for a message 'Missing name for redirect.'
    endif
    # Set Prompt
    if ($?SSH_CONNECTION) then
      set prompt = '%{\e[31m%B%m%b\e[00m%} %U%c04%u '
    else
      set prompt = '%{\e[35m%B%m%b\e[00m%} %U%c04%u '
    endif
    set prompt = '%{\e[32m%S%/%s\e[00m%} \n> '

    # Set tcsh key binding
    bindkey    ^P   history-search-backward
    bindkey    ^N   history-search-forward
    bindkey -k home backward-delete-word
    bindkey    ^R   backward-word
    bindkey    ^G   forward-word
    bindkey -k up   kill-line
    bindkey "^[[5~" kill-whole-line	# Page up key. cf. https://opensource.apple.com/source/tcsh/tcsh-65/tcsh/cygwin/bindkey.tcsh
    # for tcsh environment
    set addsuffix
    set complete    = enhance
#   set recexact
    set correct     = cmd
    set autocorrect
    set autoexpand
    set recognize_only_executables
    set ignoreeof
    set dunique
    set dextract
    set dirsfile    = ~/.cshdirs
    set savedirs
    set autolist    = ambiguous   # Just setting this variable enables TAB key to list files.
    set history     = 2000
    set histdup     = erase
    set savehist    = ( 2000 merge )
    set fignore     = (.o \\~)
    set implicitcd
    set color

    source ~/.complete.tcsh
endif
