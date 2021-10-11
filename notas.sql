
CREATE TABLE Usuario (
    id INT (10) UNSIGNED NOT NULL  AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Email VARCHAR (100) NOT NULL,
    CONSTRAINT PKid PRIMARY KEY (id)
) ;

INSERT INTO Usuario
VALUES (1, "Felipe", "Felipe@gmail.com"),
(2, "Bart", "cometeMisPantalonsilos@gmail.com"),
(3, "Gaston", "Gaston@gmail.com"),
(4, "Kratos", "godOfWar@gmail.com"),
(5, "he-man", "graySkull@gmail.com"),
(6, "dante", "youGonaPayForThis@gmail.com"),
(7, "pantro", "thundercats@gmail.com"),
(8, "Ruy", "hadouken@gmail.com"),
(9, "Cole Train", "cuando_haces_headshot¡Salpica!@gmail.com"),
(10, "Tortuga Mutante", "leoNinja@gmail.com");


CREATE TABLE Notas (
id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
Titulo VARCHAR (100) NOT NULL,
Descripcion_nota VARCHAR (100) NOT NULL,
Fecha_creacion DATETIME,
Ultima_modificacion DATETIME,
Usuario_id INT (10) UNSIGNED NOT NULL,
CONSTRAINT PKid PRIMARY KEY (id),
CONSTRAINT FK_Usuario_id FOREIGN KEY (Usuario_id) REFERENCES Usuario(id)
);


INSERT INTO Notas
VALUES (default, "que"," que paso ayer", "2020/02/03"," 2020/02/03", 2),
 (default, "homero","capitulo que dice a la grande le puse cuca", "2020/02/03"," 2020/02/03",4),
 (default, "Vegeta","you power is over 9000", "2020/02/03"," 2020/02/03",5),
 (default, "Casablanca","casa blanca es una ciudad de marruecos o una casa pintada de blanca", "2020/02/03"," 2020/02/03", 3),
 (default, "pedrito","predrito clavo un clavito que dedo se martillo pedrito", "2020/02/03"," 2020/02/03", 2),
 (default, "llueve","para que carajo queres que llueva?, es quiero ver gotas", "2020/02/03"," 2020/02/03", 4),
 (default, "kenny","oh!! por dios mataron a kenny,-hijos de frula-", "2020/02/03"," 2020/02/03",6),
 (default, "john","where is john connor", "2020/02/03"," 2020/02/03",8),
 (default, "wick","que? ese don nadie, - ese maldito don nadie es Jhon Wick -", "2020/02/03","2020/02/03", 7),
 (default, "tadidor","un traidor como tu no merece usar ese uniforme (hoffman hablando con Marcus Fénix )", "2020/02/03"," 2020/02/03",9);


CREATE TABLE Notas_Categorias (
id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
Notas_id INT (10) UNSIGNED NOT NULL,
Categorias_id INT (10) UNSIGNED NOT NULL,
CONSTRAINT PKid PRIMARY KEY (id),
CONSTRAINT FK_Notas_id FOREIGN KEY (Notas_id) REFERENCES Notas(id),
CONSTRAINT FK_Categorias_id FOREIGN KEY (Categorias_id) REFERENCES Categorias(id)
);

CREATE TABLE Categorias (
id INT (10) UNSIGNED NOT NULL AUTO_INCREMENT,
Categorias VARCHAR (100) NOT NULL,
CONSTRAINT PKid PRIMARY KEY (id)
); 

INSERT INTO categorias
VALUES (1, "PELICULA"),
(2, "SERIE"),
(3, "ANIME"),
(4, "VIDEOJUEGO"),
(5, "RANDOM");