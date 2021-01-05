/*
  Same query as assignments_per_day but only return the rows where total assignments is greater than
  or equal to 10.
*/


SELECT day , count(assignments.*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(assignments.*) >= 10
ORDER BY day ASC;
