# Docker's container PHP-FPM

### English

You can run this Docker container to get a PHP listener (Port 9000 TCP):
First build an image:
```
docker build -t phpfpm:v1 .
```

To run:
```
docker run --name phpfpm -t phpfpm:v1 
```

### Español
Este contenedor de Docker permite procesador codigo PHP remotamente. El listener se ejecuta en el puerto 9000.
Primero se compone la imagen:
```
docker build -t phpfpm:v1 .         
```
Después se ejecuta el contenedor
```
docker run --name phpfpm -td phpfpm:v1
```

