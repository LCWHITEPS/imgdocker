# Usar una imagen base de Node.js
FROM node:14

# Crear el directorio de trabajo
WORKDIR /app

# Copiar los archivos de dependencia
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que correrá la app
EXPOSE 3000

# Comando para correr la app
CMD ["node", "server.js"]
