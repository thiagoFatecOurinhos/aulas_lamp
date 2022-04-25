CREATE DATABASE sistema;
USE sistema;

CREATE TABLE login (email VARCHAR(50), password VARCHAR(50));

INSERT INTO login VALUES ("teste@dominio.org", "senhasecreta");
SELECT * FROM login ;
# Confirmar se a saída é assim:
+-------------------+--------------+
| email             | password     |
+-------------------+--------------+
| teste@dominio.org | senhasecreta |
+-------------------+--------------+

# Criação do usuário e permissão para trabalhar na tabela correta
CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'senha';
GRANT ALL PRIVILEGES ON sistema.* TO 'usuario'@'localhost' IDENTIFIED BY 'senha';
FLUSH PRIVILEGES;
