-- ------------------------------------------------------
-- Script SQL para la creación inicial de la base de datos 'tiendaropa'
-- y la inserción de datos de ejemplo.
-- ------------------------------------------------------

-- --- Crear y seleccionar la base de datos ---
CREATE DATABASE IF NOT EXISTS `tiendaropa` CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tiendaropa`;

-- --- Tabla `categoria` ---
CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `categoria` VALUES
(1,'Todo tipo de camisetas','Camisetas'),
(2,'Pantalones para hombre y mujer','Pantalones'),
(3,'Vestidos elegantes','Vestidos'),
(4,'Complementos para tu outfit','Accesorios'),
(5,'Zapatillas deportivas y casuales','Zapatillas'),
(6,'Polos con diferentes estampados','Polos'),
(7,'Chaquetas de invierno y entretiempo','Chaquetas');

-- --- Tabla `talla` ---
CREATE TABLE `talla` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `talla` VALUES
(1,'XS'),
(2,'A'),
(3,'M'),
(4,'L'),
(5,'XL'),
(6,'XXL'),
(7,'S');

-- --- Tabla `usuario` ---
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL, -- ADVERTENCIA: ¡Contraseñas en texto plano! Hashear en producción.
  `rol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_email` (`email`) -- Asegura que el email sea único
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `usuario` VALUES
(1,'Sistema','admin@tiendaropa.com','Admin','123456','ADMIN'),
(2,'Ejemplo','cliente@ejemplo.com','Cliente','123456','CLIENTE'),
(4,'Coello','coello@tecsup.edu.pe','Profesor','123456','ADMIN');

-- --- Tabla `producto` ---
CREATE TABLE `producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` decimal(38,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `talla_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_producto_categoria` (`categoria_id`), -- Nombre de índice más descriptivo
  KEY `FK_producto_talla` (`talla_id`),       -- Nombre de índice más descriptivo
  CONSTRAINT `FK_producto_talla` FOREIGN KEY (`talla_id`) REFERENCES `talla` (`id`),
  CONSTRAINT `FK_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `producto` VALUES
(1,'Camiseta de algodón 100%','https://leonisa.pe/cdn/shop/files/M3045_457_1200X1500_1.jpg?v=1722633630','Camiseta',15.99,100,1,2),
(2,'Vaquero clásico','https://v6d7d2x5.delivery.rocketcdn.me/wp-content/uploads/campana-azul-front.jpg','Pantalón Vaquero',39.99,30,2,4),
(3,'Zapatillas cómodas para uso diario','https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaPE/19865178_1/w=1500,h=1500,fit=pad','Zapatillas Urbanas',59.99,40,5,4),
(4,'Especiales para correr','https://thn.pe/cdn/shop/products/fu7712_1.jpg?v=1689720309','Zapatillas Running',89.99,25,5,5),
(5,'Polo con diseño moderno','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqCY54I7jKy6-01ALlsSiA9gN18OoN-I1jw&s','Polo Estampado',24.99,45,6,3),
(6,'Polo de algodón básico','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTKEWh8J2yJ0zlZ_vnB0QKwog0kB4csUrfOg&s','Polo Clásico',22.50,50,6,2),
(7,'Ideal para días de lluvia','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxRHqwgp4qeY7VtJVtlHwqNV9GZx_5SugZcw&s','Chaqueta Impermeable',69.90,20,7,4),
(8,'Chaqueta elegante de cuero sintético','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9UwXFE52xyiEl4gW1Nok01JGQde_EKwTivA&s','Chaqueta de Cuero',120.00,10,7,5),
(9,'Vestido con estampado floral, perfecto para primavera','https://i.pinimg.com/736x/6f/08/7e/6f087efeed6802f21344f934d5e84f15.jpg','Vestido Floral',49.99,30,3,3),
(10,'Vestido negro clásico para eventos formales','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLdxA6hlYDNRZPFyct6ChoJgR37Ya6K7FQ8A&s','Vestido Negro Elegante',75.00,15,3,4),
(11,'Gorra de tela ajustable','https://m.media-amazon.com/images/I/61RhnVAGrBL._AC_UY1000_.jpg','Gorra Casual',14.99,60,4,2),
(12,'Cinturón elegante para vestir','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5R_S_FrM3ZYCCFJK29uzJ_5EqMFUjh2SXkw&s','Cinturón de Cuero',29.99,35,4,3);

-- --- Fin del script ---
