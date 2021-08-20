function docker-login
	echo $GITHUB_TOKEN | docker login ghcr.io --username $GITHUB_USERNAME --password-stdin
end
