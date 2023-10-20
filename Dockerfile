# Utiliza una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación al contenedor
COPY . .

# Expone un puerto (si es necesario)
EXPOSE 3000

# Comando para ejecutar la aplicación Node.js
CMD ["node", "index.js"]
