# 🛍️ Tienda de Ropa - Proyecto Spring Boot + MySQL

Este es un sistema web desarrollado con **Spring Boot** que permite gestionar productos, categorías, tallas y usuarios de una tienda de ropa. Es parte de un proyecto educativo en Tecsup.

## 📌 Características

- CRUD de **Productos**, **Categorías**, **Tallas** y **Usuarios**
- Diseño frontend con **Thymeleaf + Bootstrap**
- Conexión a base de datos **MySQL**
- Arquitectura **MVC**
- Uso de **Spring Data JPA**
- Mensajes de validación y errores amigables
- Estilo visual personalizado con fuentes y botones redondeados

## 🛠️ Tecnologías Utilizadas

| Tecnología       | Versión / Detalle  |
|------------------|--------------------|
| **Java**         | 17                 |
| **Spring Boot**  | 3.x                |
| **Maven**        | Gestor de dependencias |
| **MySQL**        | 8.x                |
| **Thymeleaf**    | Motor de plantillas HTML |
| **Bootstrap 5**  | Estilos responsivos |
| **IntelliJ IDEA**| IDE principal      |

## 🚀 Instalación y Ejecución

### 1. Clonar el proyecto

```bash
git clone https://github.com/tu-usuario/tienda-ropa-springboot.git
cd tienda-ropa-springboot


## 2. Configurar la base de datos

Crea una base de datos en MySQL llamada: `tienda_ropa`.

Si usas **MySQL Workbench** o **phpMyAdmin**, puedes cargar el archivo `db/tienda_ropa.sql`.

Para cargar el archivo SQL desde **MySQL Workbench** o **phpMyAdmin**, solo importa el archivo `db/tienda_ropa.sql` y se crearán las tablas y los datos iniciales.

O si prefieres usar la terminal:

```bash
mysql -u root -p tienda_ropa < db/tienda_ropa.sql

## 3. Configurar credenciales en `application.properties`

Edita el archivo `src/main/resources/application.properties` con tus credenciales de la base de datos MySQL:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/tienda_ropa
spring.datasource.username=root
spring.datasource.password=TU_CLAVE
spring.jpa.hibernate.ddl-auto=none
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true


## 4. Ejecutar desde IntelliJ

1. Abre **IntelliJ IDEA**.
2. Importa el proyecto como **Maven**.
3. Ejecuta la clase principal: `TiendaDeRopaApplication.java` (con el icono de play verde en la parte superior de la ventana de IntelliJ).
4. El servidor se iniciará en [http://localhost:8080](http://localhost:8080).
