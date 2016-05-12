#----------------------------------------
# Completion Configuration
#----------------------------------------
complete -\~*   'p/0/d:^{CVS,RCS}/'
#complete -.*    'p/0/d:^{CVS,RCS}/'    # Now I can't see the meaning of this.
complete -/*    'p/0/d:^{CVS,RCS}/'
complete -\$*   'p/0/d:^{CVS,RCS}/'
uncomplete mv

# Copied from /etc/profile.d/complete.tcsh and modified them.
complete rm     c/--/"(directory force interactive verbose \
                recursive help version)"/ c/-/"(d f i v r R -)"/ \
                'n/*/f:^*.{rb,pl,c,cc,C,h,in}/' # Protect precious files
complete cp     c/--/"(archive backup no-dereference force interactive \
                link preserve parents sparse recursive symbolic-link \
                suffix update verbose version-control one-file-system \
                help version)"/ \
                c/-/"(a b d f i l P p R r S s u V v x -)"/ \
                'n/-*r/d/' n/{-S,--suffix}/x:'<suffix>'/ \
                n/{-V,--version-control}/"(t numbered nil existing \
                never simple)"/ 'n/-/f/' 'N/-/d/' 'p/1/f/' 'n/*/f/'
complete cd     'n/*/d:^{CVS,RCS,debussyLog,nWaveLog}/'
# complete make   'p/1/(clean check debug atdesigner)/'
complete man    'n/*/c/'        # complete commands
complete p      'n/*/d:^{CVS,RCS,debussyLog,nWaveLog}/'
complete pushd  'n/*/d:^{CVS,RCS,debussyLog,nWaveLog}/'
complete rmdir  'n/*/d/'
complete which  'n/*/c/'        # 
complete unalias 'p/1/a/'       # complete aliases
complete unset  'p/1/s/'        # complete variables
complete finger 'p/1/u/'        # complete user-names
complete svn    'n/*/f:^*{~,.log,.tmp,.err,.db}/'
# complete vi     'n/*/f:^*{~,.log,.tmp,.err,.db}/'
complete vi     'n/*/f:^*{~,.{log,tmp,err,db,,class,o,a,exe}}/'
complete less   'n/*/f:^*{~,.{class,o,a,exe}}/'

# Complete text files which end with '.dirs' for the next word of -L and -S
complete dirs   'n/{-L,-S}/t:*.dirs/'
complete find   'c/-/(name print follow)/'
complete complete 'p/1/c/'

set hostnames = ( rerun.it.uts.edu.au )
complete telnet 'p/1/$hostnames/'
complete ftp    'p/1/$hostnames/'
complete ssh    'p/1/$hostnames/'
complete slogin 'p/1/$hostnames/'
complete scp    'p/2/$hostnames/:' 'n/*/f:^*{.{class,o,a,exe}}/'

complete g++    'n/*/f:*.{C,cc,cpp,o,s,i}/'
