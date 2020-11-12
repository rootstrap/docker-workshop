# ON MANAGER NODE
docker swarm init

# ON WORKER NODE
docker swarm join --token SWMTKN-1-3caqy7t00rvmovm9pnxpnwe3xtlkngb4mp0bh3jqxf2ujf32ga-0c1u8plkhkvfwt2ggsrfgihdf 172.31.29.238:2377

# ON MANAGER NODE
docker node ls