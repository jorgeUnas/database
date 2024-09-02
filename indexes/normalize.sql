INSERT INTO college (student_id, advisor_name,advisor_department, advisor_email)
VALUES (-1, 'Stern', 'Biology', 'stern111@college.edu');

SELECT *
FROM college
WHERE student_id = -1;