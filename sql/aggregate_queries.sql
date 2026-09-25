-- Total number of students
SELECT COUNT(*) AS total_students
FROM students;

-- Number of students in each department
SELECT department_id, COUNT(*) AS student_count
FROM students
GROUP BY department_id;

-- Number of enrollments per course
SELECT course_id, COUNT(*) AS total_enrollments
FROM enrollments
GROUP BY course_id;
