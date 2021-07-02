	set -Ux JAVA_HOME (/usr/libexec/java_home -v 11)
	direnv hook fish | source

fish_add_path /usr/local/sbin
