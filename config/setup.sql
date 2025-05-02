-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS sr_travels;

-- Use the database
USE sr_travels;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add an initial admin user (password: admin123)
INSERT INTO users (email, password, first_name, last_name) 
VALUES ('admin@srtravels.com', '$2y$10$8tqEAOI3wpA/IFqLtJMQKuSHlJ4.gF0r5mthZGEO.F/d9RIgEdZx.', 'Admin', 'User')
ON DUPLICATE KEY UPDATE id=id;