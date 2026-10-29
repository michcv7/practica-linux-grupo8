### 3. Control de versiones
Repositorio Git inicializado en /proyecto y subido a GitHub.

### 4. Docker
```bash
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker && sudo systemctl start docker
sudo usermod -aG docker adminsys
sudo usermod -aG docker tecnico
sudo docker run hello-world
```

### 5. Servidor web con Nginx (puerto 8080)
```bash
sudo docker run -d --name nginx-basico -p 8080:80 -v /proyecto/web:/usr/share/nginx/html:ro nginx
```

### 6. Imagen personalizada (puerto 8081)
```bash
sudo docker build -t servidor-grupo8 .
sudo docker run -d --name servidor-grupo8 -p 8081:80 servidor-grupo8
```

### 7. Redes y volúmenes
```bash
sudo docker network create red-proyecto
sudo docker run -d --name nginx-red --network red-proyecto -p 8082:80 nginx
sudo docker volume create volumen-web
sudo docker run -d --name nginx-volumen -p 8083:80 -v volumen-web:/usr/share/nginx/html nginx
```

### 8. Pruebas de conectividad
```bash
sudo docker run -it --rm --network red-proyecto alpine ping -c 4 nginx-red
```
