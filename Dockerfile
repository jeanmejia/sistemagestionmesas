# Etapa base: usar nginx para servir archivos estáticos
FROM nginx:alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/share/nginx/html

# Eliminar los archivos por defecto de nginx
RUN rm -rf ./*

# Copiar tu aplicación (HTML, CSS, JS, imágenes, etc.) al contenedor
COPY sistema_de_gestion_de_mesas_js_una_sola_pagina.html ./index.html

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto (Nginx ya corre automáticamente)
CMD ["nginx", "-g", "daemon off;"]
