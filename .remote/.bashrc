# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like system$
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias prodlog='cd /var/log/vvs/wildfly/vvs/'
alias testlog='cd /var/log/vvs/wildfly/vvs-test/'
alias watchservice='tail -f ./server.log | grep -E '.*F$
alias fsresources='cd /etc/wildfly/vv-resources'
alias feresources='cd /var/www/vv-resources'
alias intresources='cd /etc/wildfly/vv-resources' 
# change dir and ls
cd() { builtin cd "$@" && ls; }

