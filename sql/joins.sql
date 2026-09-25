-- Students with their department names
SELECT students.student_name, departments.department_name
FROM students
JOIN departments
ON students.department_id = departments.department_id;

-- Students with enrolled courses
SELECT students.student_name, courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.student_id
JOIN courses
ON enrollments.course_id = courses.course_id;

-- Courses with department names
SELECT courses.course_name, departments.department_name
FROM courses
JOIN departments
ON courses.department_id = departments.department_id;
