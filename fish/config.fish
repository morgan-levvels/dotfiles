if test -f /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

direnv hook fish | source

fish_add_path /usr/local/sbin

if test -f ~/.config/fish/local.config.fish
    source ~/.config/fish/local.config.fish
end

# jenv
set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and source (jenv init -|psub)

# jdk
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/amazon-corretto-17.jdk/Contents/Home
