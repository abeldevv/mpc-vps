# Usa una imagen oficial de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto de archivos
COPY . .

# Expone el puerto que usa Railway (por defecto 8080)
EXPOSE 8080

# Comando para arrancar la app
CMD ["npm", "start"]
