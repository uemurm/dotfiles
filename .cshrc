setenv  SHELL           /bin/tcsh
setenv  EDITOR          vim
setenv  VISUAL          vim
setenv  PAGER           less
setenv  JLESSCHARSET    japanese
setenv  LESS		--ignore-case

source  ~/.alias.csh
source  ~/.nuix.csh

#
# Set terminal key binding
#
#stty erase ^H

#
# add local bin directory to path
#
set path = ( /cygdrive/c/Program\ Files/Java/jdk1.6.0/bin /bin $path ~/bin )

setenv  RUBYLIB         ~/lib

unset   autologout
set     nobeep

#----------------------------------------
# tcsh specific configuration
#----------------------------------------
if($?tcsh)then
    if($?loginsh)then
    else
      dirs -L ~/.cshdirs
    endif
    setenv SHELL        tcsh
    # Set Prompt
    if ($?SSH_CONNECTION) then
      set prompt = '%{\e[31m%B%m%b\e[00m%} %U%c04%u '
    else
      set prompt = '%{\e[35m%B%m%b\e[00m%} %U%c04%u '
    endif
    set prompt = '%U%~%u\n> '

    # Set tcsh key binding
    bindkey ^P history-search-backward
    bindkey ^N history-search-forward
    bindkey ^W backward-delete-word
    bindkey ^R backward-word
    bindkey ^G forward-word

    # for tcsh environment
    set addsuffix
    set complete    # = enhance
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
    set autolist    = ambiguous
    set history     = 2000
    set histdup     = erase
    set savehist    = ( 2000 merge )
    set dspkanji    = euc
    set fignore     = (.o \\~)
    set implicitcd
    set color

    source ~/.complete.tcsh

endif

if($?loginsh)then
  rxvt --geometry 80x50+0+0 &
endif
