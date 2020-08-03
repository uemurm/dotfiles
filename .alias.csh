#----------------------------------------
# Set command aliases
#----------------------------------------
alias	lr	'ls $REV/r* | sed "s/.*RunHead\///g"'
alias	lb	'ls /d/work/7.0/RunHead/r* | sed "s/.*RunHead\///g"'
alias   vi      'vim'
alias   d       'dirs -v'
alias   p       'pushd'

alias   ls      'ls-F'
alias   ll      'ls -lh'
alias   lt      'ls -tr'
alias   llt     'ls -lhtr'
alias   llta    'ls -lhtra'
alias   lld     'ls -lhd'
alias   la      'ls -lha'

alias   mv      'mv -i'
alias   rm      'rm -i'
alias   cp      'cp -i'

alias   pwd     'echo $cwd | sed 's:/home/mitsuhide:~:''
alias   less    'less --ignore-case'
