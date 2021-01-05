/*
  Get currently enrolled students' average assignment completion time.

  - Select the students name and average time from assignment submissions.
  - Order the results from greatest duration to least greatest duration.
  - A student will have a null end_date if they are currently enrolled.

*/

SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP by students.name
ORDER BY AVG(assignment_submissions.duration) DESC;
