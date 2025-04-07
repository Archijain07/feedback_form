CREATE DATABASE IF NOT EXISTS health_prediction_db;
USE health_prediction_db;

CREATE TABLE IF NOT EXISTS feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    recommend_to_others ENUM('Yes', 'No') NOT NULL,
    experience TEXT,
    suggestions TEXT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SHOW DATABASES;