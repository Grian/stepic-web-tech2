#!/bin/bash
mkdir -p etc public/{img,css,js} uploads/
touch etc/nginx.conf
touch etc/gunicorn.conf
touch etc/boil.sh init.sh
chmod 0755 etc/boil.sh init.sh

NAME=webtech2.conf
echo '#!/bin/bash' >> init.sh
echo "NAME=webtech2.conf" >> init.sh
echo 'sudo ln -fs $PWD/etc/nginx.conf /etc/nginx/sites-enabled/$NAME' >> init.sh
echo 'sudo /etc/init.d/nginx restart' >> init.sh
echo 'sudo ln -fs $PWD/etc/gunicorn.conf /etc/gunicorn.d/$NAME' >> init.sh
echo 'sudo /etc/inid.d/gunicorn restart' >> init.sh
