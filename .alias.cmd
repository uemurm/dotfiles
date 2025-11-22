@echo off

@REM @ is unnecessary for these lines as echoing is disabled in the first line already but `Ctrl+/` adds this way.
@REM String Value of `HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\AutoRun` should point to this file.
@REM ex.) \\wsl$\Ubuntu-20.04\home\mitsu\dotfiles\.alias.cmd
@REM   or %USERPROFILE%\Dotfiles\.alias.cmd
@REM Just try `doskey /?`

@REM
@REM `ls` aliases
@REM
@REM Cannot insert whitespaces before and after `=` in the following lines.
doskey      ls=ls -F --color $*
doskey      ll=ls -F --color -lh $*
doskey      lt=ls -F --color -tr $*
doskey     llt=ls -F --color -lhtr $*
doskey    llta=ls -F --color -lhtra $*
doskey     lld=ls -F --color -lhd $*
doskey      la=ls -F --color -lha $*

doskey vi=vim $*
doskey mv=mv --interactive $*
doskey rm=rm --interactive $*
doskey cp=cp --interactive $*

@REM
@REM Git aliases
@REM
doskey   gst=git status $*
doskey gdiff=git diff $*
doskey   gbr=git branch $*
doskey  gadd=git add $*
doskey   gci=git commit -m $*
doskey   gco=git checkout $*
doskey   gps=git push $*
doskey   gpl=git pull $*
doskey    gf=git fetch $*
doskey  glog=git log $*
doskey gshow=git show $*

@REM Set a system environment variable, LESS, to --ignore-case, which would be better than following.
@REM doskey less=less --ignore-case $*
@REM Quotations should not be used on MS-DOS for the line below.
set LESS=--ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS

@REM EDITOR should be set to vim.
set EDITOR=vim

@REM Set colorful prompt for readability. ANSI code, 92:Bright Green, 91: Bright Red
set PROMPT=$E[91m$D $T $E[92m$P$_$G$E[0m 
