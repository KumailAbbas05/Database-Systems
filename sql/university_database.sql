CREATE DATABASE university_db;

USE university_db;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO departments VALUES
(1, 'Artificial Intelligence'),
(2, 'Computer Science'),
(3, 'Software Engineering');

INSERT INTO students VALUES
(101, 'Ali', 1),
(102, 'Sara', 2),
(103, 'Ahmed', 3),
(104, 'Ayesha', 1);

INSERT INTO courses VALUES
(201, 'Machine Learning', 1),
(202, 'Database Systems', 2),
(203, 'Software Design', 3),
(204, 'Python Programming', 1);

INSERT INTO enrollments VALUES
(1, 101, 201, 'Fall 2026'),
(2, 101, 202, 'Fall 2026'),
(3, 102, 202, 'Fall 2026'),
(4, 103, 203, 'Fall 2026'),
(5, 104, 201, 'Fall 2026');
