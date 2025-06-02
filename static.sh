docker run \
--rm \
--name some-ghost \
-e NODE_ENV=development \
-e database__connection__filename='/var/lib/ghost/content/data/ghost.db' \
-e url='http://192.168.1.211:2368' \
-p 2368:2368 \
-v $(pwd):/var/lib/ghost/content \
ghost:5.107.0
