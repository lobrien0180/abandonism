rm -r localhost:2368

wget \
--recursive \
--no-clobber \
--page-requisites \
--html-extension \
--convert-links \
--no-check-certificate \
--restrict-file-names=unix \
--domains localhost \
--no-parent \
http://localhost:2368

mv "localhost:2368" public

find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpgg#.jpg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpgpg#.jpg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpgjpg#.jpg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpg\.jpg#.jpg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpegg#.jpeg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpegpg#.jpeg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpegpeg#.jpeg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpegjpeg#.jpeg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#\.jpeg\.jpeg#.jpeg#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#.pngg#.png#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#.pngng#.png#g'
find ./public/ -type f -name '*.html' | xargs sed -i '' -e 's#.pngpng#.png#g'
