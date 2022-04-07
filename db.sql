CREATE DATABASE sistema;
USE sistema;

CREATE TABLE login (email VARCHAR(50), password VARCHAR(50));
INSERT INTO login VALUES ("teste@dominio.org", "senhasecreta");
SELECT * FROM login ;
+-------------------+--------------+
| email             | password     |
+-------------------+--------------+
| teste@dominio.org | senhasecreta |
+-------------------+--------------+


DELETE FROM login WHERE email = "teste@dominio.org";
INSERT INTO login VALUES ("teste@dominio.org", MD5("senhasecreta"));
SELECT * FROM login ;
+-------------------+----------------------------------+
| email             | password                         |
+-------------------+----------------------------------+
| teste@dominio.org | 7ddd68e771c61f836eb6de453185c505 |
+-------------------+----------------------------------+
