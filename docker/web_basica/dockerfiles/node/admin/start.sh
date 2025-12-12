#!/bin/bash

set -e 

load_entrypoint_nginx(){
    bash /root/admin/nginx/start.sh
}

workdir(){
    cd /root/admin/node/proyecto_web_basica/web_basica_adriana
}

dependencias(){
    nvm install 22
    nvm use 22
    node -v   # v22.x
    npm -v    # cambia automáticamente
    npm install
    npm run build
    cp -r dist/* /var/www/html/
}


nginxreload(){
    service nginx reload
}

nginxservice(){
    exec nginx -g "daemon off;"
}

main(){
    load_entrypoint_nginx
    workdir
    dependencias
    nginxreload
    tail -f /dev/null
}

main