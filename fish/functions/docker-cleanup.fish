function docker-cleanup
	docker ps -a -q | xargs -n 1 -P 8 -I {} docker stop {}
	docker ps -a -q | xargs -n 1 -P 8 -I {} docker rm {}
end
