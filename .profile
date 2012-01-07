# My bin directory
export PATH=~/.bin:$PATH

# PG 9's bin directory
export PATH=$PATH:/Library/PostgreSQL/9.0/bin/

# Clojure's classpath
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

# Rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# Git editor
export EDITOR="mvim -f"
