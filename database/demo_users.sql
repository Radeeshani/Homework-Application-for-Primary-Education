-- Demo users for testing the authentication system
-- Passwords are encoded with BCrypt (the actual encoded values will be generated by the application)
-- Plain text passwords: admin123, teacher123, student123, parent123

USE homework_db;

-- Clear existing data
DELETE FROM users;

-- Reset auto-increment
ALTER TABLE users AUTO_INCREMENT = 1;

-- Insert demo users
-- Admin User
INSERT INTO users (email, password, first_name, last_name, role, phone_number) 
VALUES ('admin@homework.com', '$2a$10$example.hash.admin', 'School', 'Administrator', 'ADMIN', '+1234567890');

-- Teacher User
INSERT INTO users (email, password, first_name, last_name, role, phone_number, subject_taught) 
VALUES ('teacher@homework.com', '$2a$10$example.hash.teacher', 'John', 'Smith', 'TEACHER', '+1234567891', 'Mathematics');

-- Student User
INSERT INTO users (email, password, first_name, last_name, role, phone_number, class_grade, student_id) 
VALUES ('student@homework.com', '$2a$10$example.hash.student', 'Emma', 'Johnson', 'STUDENT', '+1234567892', '3rd Grade', 'STU001');

-- Parent User (linked to Emma Johnson)
INSERT INTO users (email, password, first_name, last_name, role, phone_number, parent_of_student_id) 
VALUES ('parent@homework.com', '$2a$10$example.hash.parent', 'Michael', 'Johnson', 'PARENT', '+1234567893', 3);

-- Additional demo users
INSERT INTO users (first_name, last_name, email, password, role, phone_number, subject_taught, created_at, updated_at) 
VALUES ('Sarah', 'Wilson', 'sarah.teacher@homework.com', '$2a$10$rJ8jQRKE.rF8.Q8Q8Q8Q8O8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8', 'TEACHER', '123-456-7894', 'English', NOW(), NOW());

INSERT INTO users (first_name, last_name, email, password, role, phone_number, class_grade, student_id, created_at, updated_at) 
VALUES ('Alex', 'Brown', 'alex.student@homework.com', '$2a$10$rJ8jQRKE.rF8.Q8Q8Q8Q8O8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8', 'STUDENT', '123-456-7895', '4th Grade', 'STU002', NOW(), NOW());

INSERT INTO users (first_name, last_name, email, password, role, phone_number, class_grade, student_id, created_at, updated_at) 
VALUES ('Sophia', 'Davis', 'sophia.student@homework.com', '$2a$10$rJ8jQRKE.rF8.Q8Q8Q8Q8O8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8Q8', 'STUDENT', '123-456-7896', '3rd Grade', 'STU003', NOW(), NOW());

-- Note: The above password hashes are placeholders. 
-- For testing, please register these users through the application:

-- Test Credentials:
-- Admin:   email: admin@homework.com,   password: admin123
-- Teacher: email: teacher@homework.com, password: teacher123
-- Student: email: student@homework.com, password: student123
-- Parent:  email: parent@homework.com,  password: parent123 