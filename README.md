
# Proyecto de Microservicio: Mi-Microservicio

![Java](https://img.shields.io/badge/Java-17-blue.svg)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.0-green.svg)
![Docker](https://img.shields.io/badge/Docker-%230db7ed.svg?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-%23326ce5.svg?logo=kubernetes&logoColor=white)

### Descripción

**Mi-Microservicio** es un backend desarrollado con Spring Boot 3 y Java 17, diseñado para ser una solución ligera y escalable como parte de una futura infraestructura más amplia. Su objetivo es proporcionar una API REST que sirva como backend para una página web personal y potencialmente como base para gestionar toda la infraestructura.

### Tabla de Contenidos
- [Características](#características)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [Instalación](#instalación)
- [Uso](#uso)
- [Docker y Kubernetes](#docker-y-kubernetes)
- [Configuración](#configuración)
- [Contribuciones](#contribuciones)
- [Licencia](#licencia)

### Características

- **API REST**: Para la gestión de información básica de usuario.
- **Arquitectura de Microservicios**: Diseñado para ser desplegado y escalado de forma independiente.
- **Dockerizado**: Fácil de desplegar en cualquier infraestructura compatible con contenedores.
- **Integración con Kubernetes**: Helm chart incluido para facilitar el despliegue en un clúster de Kubernetes.

### Estructura del Proyecto

```plaintext
mi-microservicio/
├── src/
│   ├── main/
│   │   ├── tuempresa/
│   │   │   └── tuproyecto/
│   │   │       ├── Application.java           # Clase principal
│   │   │       ├── controller/                # Controladores REST
│   │   │       ├── service/                   # Lógica de negocio
│   │   │       └── model/                     # Modelos de datos
│   │   └── resources/
│   │       └── application.properties         # Configuración de la aplicación
├── Dockerfile                                 # Imagen de Docker
├── helm-chart/                                # Chart de Helm para Kubernetes
│   ├── templates/                             # Plantillas YAML de Kubernetes
│   └── values.yaml                            # Valores por defecto del Chart
├── pom.xml                                    # Configuración de Maven o build.gradle para Gradle
└── README.md                                  # Documentación del proyecto
```

### Instalación

#### Prerrequisitos

- **Java 17** o superior.
- **Maven** (si usas Maven como herramienta de construcción).
- **Docker** y **Kubernetes** (opcional para despliegue en contenedores).

#### Compilación y Ejecución

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tuusuario/mi-microservicio.git
   cd mi-microservicio
   ```

2. Compila y ejecuta el proyecto:
   ```bash
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```

3. La aplicación estará disponible en `http://localhost:8080`.

### Uso

El microservicio expone una serie de endpoints REST. Ejemplo:

- **GET** `/api/personal-info` - Obtener información personal.
- **POST** `/api/personal-info` - Crear nueva información personal.
  
Ejemplos de consumo de la API (usando `curl`):
```bash
curl -X GET http://localhost:8080/api/personal-info
curl -X POST -H "Content-Type: application/json" -d '{"name": "John Doe"}' http://localhost:8080/api/personal-info
```

### Docker y Kubernetes

#### Construir y Ejecutar con Docker

1. Construye la imagen Docker:
   ```bash
   docker build -t mi-microservicio:latest .
   ```

2. Ejecuta el contenedor:
   ```bash
   docker run -p 8080:8080 mi-microservicio:latest
   ```

#### Despliegue en Kubernetes

1. Instala el Chart de Helm:
   ```bash
   helm install mi-microservicio ./helm-chart
   ```

2. Revisa el estado:
   ```bash
   kubectl get pods
   ```

### Configuración

Todas las configuraciones de la aplicación pueden ajustarse en `src/main/resources/application.properties`. Puedes modificar el puerto, los detalles de la base de datos, y otras configuraciones adicionales.

### Contribuciones

Si deseas contribuir a este proyecto, por favor, sigue los pasos a continuación:

1. Haz un fork del repositorio.
2. Crea una rama (`git checkout -b feature/nueva-caracteristica`).
3. Haz commit de tus cambios (`git commit -am 'Añadir nueva característica'`).
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`).
5. Abre un Pull Request.

### Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
