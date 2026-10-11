CREATE DATABASE IF NOT EXISTS demo;
USE demo;

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(120) NOT NULL,
    email VARCHAR(220) NOT NULL,
    country VARCHAR(120),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS permission (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS user_permission (
    user_id INT,
    permission_id INT,
    PRIMARY KEY(user_id, permission_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (permission_id) REFERENCES permission(id)
);

INSERT IGNORE INTO permission(id, name) VALUES (1, 'add');
INSERT IGNORE INTO permission(id, name) VALUES (2, 'edit');
INSERT IGNORE INTO permission(id, name) VALUES (3, 'delete');
INSERT IGNORE INTO permission(id, name) VALUES (4, 'view');
