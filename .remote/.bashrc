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
alias chgtestconfig='sudo nano /opt/onboarding/onboarding-script/src/config/test.json'
alias chgprodconfig='sudo nano /opt/onboarding/onboarding-script/src/config/prod.json'
alias
# change dir and ls
cd() { builtin cd "$@" && ls; }
health() { curl https://vvs-$1.pironet-ndh.com/risk-functional-service/health -k -H 'host: $2.service.meininvest.de' }
