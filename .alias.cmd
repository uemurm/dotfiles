@echo off

@REM @ is unnecessary for these lines as echoing is disabled in the first line already but Ctrl+/ adds this way.
@REM String Value of `HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\AutoRun` should point to this file.
@REM e.x. %USERPROFILE%\.alias.cmd
@REM Just try `doskey /?`

doskey ls=ls -F --color $*
doskey ll=ls -F --color -lh $*
doskey lt=ls -F --color -tr $*
doskey llt=ls -F --color -lhtr $*
doskey llta=ls -F --color -lhtra $*
doskey lld=ls -F --color -lhd $*
doskey la=ls -F --color -lha $*

doskey mv=mv --interactive $*
doskey rm=rm --interactive $*
doskey cp=cp --interactive $*

@REM Maybe better to set an environment variable, LESS
doskey less=less --ignore-case $*
