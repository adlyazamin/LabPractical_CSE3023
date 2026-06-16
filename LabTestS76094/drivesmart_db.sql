-- MySQL schema for DriveSmart Academy
-- Creates database and Training_Sessions table.

CREATE DATABASE IF NOT EXISTS drivesmart_db;
USE drivesmart_db;

CREATE TABLE IF NOT EXISTS Training_Sessions (
  session_id INT AUTO_INCREMENT PRIMARY KEY,
  student_name VARCHAR(100) NOT NULL,
  branch_location VARCHAR(100) NOT NULL,
  lesson_type VARCHAR(100) NOT NULL,
  status VARCHAR(50) NOT NULL
);

