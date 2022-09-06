# Docker NEXUS APP

Crear archivo .env
```
mkdir .env
nano .env
```
Copiar y pegar lo siguiente
```
MYSQL_ROOT_PASSWORD=root

DIR_FRONTEND_SCSS=./frontend/includes/scss
DIR_FRONTEND_CSS=./frontend/includes/css
DIR_NODE_SASS_NODE_MODULES=./node/sass/node_modules
```

Bash para agregar el gitignore Global
```
git config --global core.excludesfile /Users/<USER>/.gitignore
```

Bash para eliminar el los archivos .DS_Store
```
cd Sites/docker/
find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch
```

Clonar los repositorios de frontend y Backend
```
cd Sites/docker/
# para sass y socketio
git clone git@gitlab.com:integro-system/services-node.git node
```

Uso de docker
```
cd Sites/docker
# Construir las imagenes
docker-compose build

# Levantar el docker
docker-compose up

# Bajar el docker
docker-compose down

# Eliminar todas las imagenes del docker
docker system prune -a
```


Comandos adicionales
```
# Obtener las imagenes que se estan ejecutando
docker ps

# Obtener la ip de la imagen de mariadb
docker inspect <container id> | grep "IPAddress"

# resultado de ejecutar el bash
 "SecondaryIPAddresses": null,
            "IPAddress": "",
                    "IPAddress": "172.28.0.2",

# Esta ip sirve para conectarse desde el backend a la base de datos
```
