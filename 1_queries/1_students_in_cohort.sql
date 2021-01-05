/*
  Get the names of all of the students from a single cohort.
  Tables are students and cohorts in existing database.

  Select their id, name
  Order them by their name in alphabetical order.
  Since this query needs to work with any specific 
  cohort, just use any number for the cohort_id.
*/

SELECT id,name
FROM students
WHERE cohort_id = 1
ORDER BY name;
