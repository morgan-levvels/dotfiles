set -Ux JAVA_HOME (/usr/libexec/java_home -v 11)
direnv hook fish | source

fish_add_path /usr/local/sbin

set local_config ~/.config/fish/config.local.fish
echo $local_config
test -r $local_config; and source $local_config