CREATE DATABASE login_system;

USE login_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);


INSERT INTO users (username, password) VALUES
('lol', '12345678'),
('dan',  'pupupupu'),
('sarah123', 'qwerty123');


CREATE USER 
'login_system'@'localhost' 
IDENTIFIED  BY 'Login_system123$';

GRANT USAGE ON *.* TO 'login_system'@'localhost';

ALTER USER 'login_system'@'localhost' 
REQUIRE NONE 
WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 
MAX_UPDATES_PER_HOUR 0 
MAX_USER_CONNECTIONS 0;

GRANT ALL PRIVILEGES ON satori.* 
TO 'login_system'@'localhost';

FLUSH PRIVILEGES;