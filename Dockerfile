# Usar una imagen base ligera con Ruby
FROM ruby:3.1

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar todos los archivos del proyecto al contenedor
COPY . .

# Instalar las dependencias necesarias
RUN gem install bundler && bundle install

# Exponer el puerto donde el servidor WebSocket escucha
EXPOSE 3030

# Comando para ejecutar el servidor
CMD ["ruby", "websocket_server.rb"]
