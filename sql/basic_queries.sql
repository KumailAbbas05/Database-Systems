-- Display all students
SELECT * FROM students;

-- Display student names only
SELECT student_name FROM students;

-- Students from department 1
SELECT *
FROM students
WHERE department_id = 1;

-- Sort students by name
SELECT *
FROM students
ORDER BY student_name;

-- Find a specific student
SELECT *
FROM students
WHERE student_name = 'Ali';

-- Update a student's name
UPDATE students
SET student_name = 'Ali Raza'
WHERE student_id = 101;

-- Delete a student example
-- DELETE FROM students
-- WHERE student_id = 104;
