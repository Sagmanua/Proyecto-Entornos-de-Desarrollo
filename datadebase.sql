CREATE DATABASE login_system;

USE login_system;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);


INSERT INTO users (username, password) VALUES
('admin', '$2y$10$wH6kqJ5y7QhK6R8j7Yk3cO9R1QZxk7zY0J7yY5zQ9XkFQmP8cC'),
('john',  '$2y$10$wH6kqJ5y7QhK6R8j7Yk3cO9R1QZxk7zY0J7yY5zQ9XkFQmP8cC'),
('sarah', '$2y$10$wH6kqJ5y7QhK6R8j7Yk3cO9R1QZxk7zY0J7yY5zQ9XkFQmP8cC');
