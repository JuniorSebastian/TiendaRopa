-- Categorías
INSERT INTO categoria (nombre, descripcion) VALUES ('Camisetas', 'Todo tipo de camisetas');
INSERT INTO categoria (nombre, descripcion) VALUES ('Pantalones', 'Pantalones para hombre y mujer');
INSERT INTO categoria (nombre, descripcion) VALUES ('Vestidos', 'Vestidos elegantes');
INSERT INTO categoria (nombre, descripcion) VALUES ('Accesorios', 'Complementos para tu outfit');
INSERT INTO categoria (nombre, descripcion) VALUES ('Zapatillas', 'Zapatillas deportivas y casuales');
INSERT INTO categoria (nombre, descripcion) VALUES ('Polos', 'Polos con diferentes estampados');
INSERT INTO categoria (nombre, descripcion) VALUES ('Chaquetas', 'Chaquetas de invierno y entretiempo');

-- Tallas
INSERT INTO talla (nombre) VALUES ('XS');
INSERT INTO talla (nombre) VALUES ('S');
INSERT INTO talla (nombre) VALUES ('M');
INSERT INTO talla (nombre) VALUES ('L');
INSERT INTO talla (nombre) VALUES ('XL');
INSERT INTO talla (nombre) VALUES ('XXL');

-- Usuarios
INSERT INTO usuario (nombre, apellido, email, password, rol) VALUES ('Admin', 'Sistema', 'admin@tiendaropa.com', '123456', 'ADMIN');
INSERT INTO usuario (nombre, apellido, email, password, rol) VALUES ('Cliente', 'Ejemplo', 'cliente@ejemplo.com', '123456', 'CLIENTE');

-- Productos
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Camiseta Básica', 'Camiseta de algodón 100%', 19.99, 'camiseta1.jpg', 50, 1, 3);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Pantalón Vaquero', 'Vaquero clásico', 39.99, 'pantalon1.jpg', 30, 2, 4);

-- Zapatillas
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Zapatillas Urbanas', 'Zapatillas cómodas para uso diario', 59.99, 'zapatillas1.jpg', 40, 5, 4);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Zapatillas Running', 'Especiales para correr', 89.99, 'zapatillas2.jpg', 25, 5, 5);

-- Polos
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Polo Estampado', 'Polo con diseño moderno', 24.99, 'polo1.jpg', 45, 6, 3);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Polo Clásico', 'Polo de algodón básico', 22.50, 'polo2.jpg', 50, 6, 2);

-- Chaquetas
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Chaqueta Impermeable', 'Ideal para días de lluvia', 69.90, 'chaqueta1.jpg', 20, 7, 4);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Chaqueta de Cuero', 'Chaqueta elegante de cuero sintético', 120.00, 'chaqueta2.jpg', 10, 7, 5);

-- Vestidos adicionales
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Vestido Floral', 'Vestido con estampado floral, perfecto para primavera', 49.99, 'vestido1.jpg', 30, 3, 3);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Vestido Negro Elegante', 'Vestido negro clásico para eventos formales', 75.00, 'vestido2.jpg', 15, 3, 4);

-- Accesorios
INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Gorra Casual', 'Gorra de tela ajustable', 14.99, 'accesorio1.jpg', 60, 4, 2);

INSERT INTO producto (nombre, descripcion, precio, imagen, stock, categoria_id, talla_id)
VALUES ('Cinturón de Cuero', 'Cinturón elegante para vestir', 29.99, 'accesorio2.jpg', 35, 4, 3);
