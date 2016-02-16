# ALIAS
alias composer='php composer.phar'
alias ll='ls -lha'
#alias apache restart='sudo apachectl restart'
#alias apache restart gracefully='sudo apachectl graceful'
#alias apache stop='sudo apachectl -k stop'
alias get-composer='curl -sS https://getcomposer.org/installer | php'
#alias gp-to-master='git push origin HEAD:refs/for/master'
alias gits='git status'
alias gitb='git branch'
alias gitco='git checkout'
alias gitlns='git log --name-status'
alias addkey='eval $(ssh-agent) && ssh-add ~/.ssh/id_rsa'
#alias gitr='git reset --soft "HEAD^"'
alias gittree='git log --pretty=oneline --abbrev-commit --graph --decorate --all'
alias gam='git add -A && git commit --amend'
alias gfc='git fetch origin && git checkout origin/master -b'
alias proj='cd ~/Projects'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles TRUE &&
	killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles FALSE
killall Finder'
alias clear-cache='rm -r ~/upcast-technology/cache/* && echo "executed: rm -r ~/upcast-technology/cache/*"'
alias xphp="php -d xdebug.profiler_enable=On -d xdebug.profiler_output_dir=."
#alias php-start="sudo php -S localhost:80 -t ~/upcast-technology/web"
alias php-start="sudo php -S nik.upcasttechnology.com:80 -t ~/upcast-technology/web"
alias php-fpm-restart="brew services restart php54"
alias sos='ssh nrealdini@52.48.47.11'
alias flush-dns-cache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'
alias upserv='coffee ~/upcast-technology/nodejs/./async-batch --server --output --errors'
alias compare-campaign-groups="php symfony upcast:compare-campaign-groups"
alias compare-campaign="php symfony upcast:compare-campaigns"
alias compare-campaign-ads="php symfony upcast:compare-campaign-ads"
alias compare-campaign-groups="php symfony upcast:compare-campaign-groups"
alias compare-campaign="php symfony upcast:compare-campaigns"
alias compare-campaign-ads="php symfony upcast:compare-campaign-ads"
alias flush-dns-cache='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed'
alias brew-chown="sudo chown -R `whoami` /usr/local"
alias selenium-run="java -jar /usr/local/bin/selenium-server-standalone-2.49.1.jar"
#alias selenium-run="java -jar /usr/local/bin/selenium-server-standalone-2.48.2.jar"
alias selenium-run-chrome="java -jar /usr/local/bin/selenium-server-standalone-2.48.2.jar -Dwebdriver.chrome.driver=/opt/chromedriver"
