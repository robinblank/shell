# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like system$
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias prodlog='cd /var/log/vvs/wildfly/vvs/'
alias testlog='cd /var/log/vvs/wildfly/vvs-test/'
#alias watchservice='tail -f */wildfly/server.log | grep -E '.*Failed\sto\sstart\sservice''
alias fsresources='cd /etc/wildfly/vv-resources'
alias feresources='cd /var/www/vv-resources'
alias intresources='cd /etc/wildfly/vv-resources' 
alias jbosscli='sudo -u wildfly /opt/wildfly/bin/jboss-cli.sh -c'
alias onboardingprod='sudo /opt/onboarding/cron_onboarding.sh prod'
alias onboardingprodlog='cd /var/log/onboarding/prod/'
# change dir and ls
cd() { builtin cd "$@" && ls; }

