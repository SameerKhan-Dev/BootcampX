/*
  Now that we understand JOINs a little bit, let's try writing
  another query that requires a JOIN. Sometimes a student's
  start_date will differ from their cohort's start_date.
  A student may have started in one cohort, gotten sick, and
  had to finish in a different cohort. We'll call this type
  of student a rollover student. 

  Get the student's name, student's start_date, cohort's name,
  and cohort's start_date.

  Alias the column names to be more descriptive.
  Order by the start date of the cohort.


*/


  SELECT students.name as student_name, students.start_date as student_start_date, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date
  FROM students 
  JOIN cohorts ON cohort_id = cohorts.id
  WHERE cohorts.start_date != students.start_date
  ORDER BY cohorts.start_date;