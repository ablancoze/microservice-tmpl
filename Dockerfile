# author: 

# --------------------------------------
# Dockerfile template for Microservices
# --------------------------------------

# Usa Eclipse Temurin como base
FROM eclipse-temurin:17-jre

# Crea un directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de la aplicación en el contenedor
COPY build/libs/{name}-{version}.jar /app/backend.jar

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/backend.jar"]
