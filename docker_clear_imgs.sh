# remove untaged docker images
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)