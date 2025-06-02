docker run \
--rm \
--name some-ghost \
-e NODE_ENV=development \
-e database__connection__filename='/var/lib/ghost/content/data/ghost.db' \
-p 2368:2368 \
-v $(pwd):/var/lib/ghost/content \
ghost:5.107.0
