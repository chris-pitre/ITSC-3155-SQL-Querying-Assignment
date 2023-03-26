#Question 1
SELECT first_name, last_name FROM student;

#Question 2
SELECT instructor_id FROM instructor WHERE tenured = 1; 

#Question 3
SELECT s.first_name as student_first_name, 
s.last_name as student_last_name,
i.first_name as advisor_first_name,
i.last_name as advisor_last_name 
FROM student s 
JOIN instructor i 
ON s.advisor_id = i.instructor_id;

#Question 4
SELECT i.instructor_id, i.first_name, i.last_name 
FROM instructor i 
LEFT JOIN student s 
ON instructor_id = advisor_id WHERE s.advisor_id IS NULL;

#Question 5
SELECT i.first_name, i.last_name, sum(c.num_credits) as total_credit_hours 
FROM instructor i JOIN course c ON i.instructor_id = c.instructor_id GROUP BY c.instructor_id;

#Question 6
SELECT course_code, course_name FROM course WHERE course_code LIKE "%3___";