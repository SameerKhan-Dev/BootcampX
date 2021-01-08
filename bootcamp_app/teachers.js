const { Pool } = require('pg');

const pool = new Pool( {
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database:'bootcampx'
});

const cohortName = process.argv[2] || "JUL02";


pool.query(`

  SELECT teachers.name as teacher, cohorts.name as cohort
  FROM teachers
  JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON students.cohort_id = cohorts.id
  WHERE cohorts.name = $1
  GROUP BY teachers.name, cohorts.name
  ORDER BY teachers.name;
`,[cohortName]).then(res => {
  res.rows.forEach(user => {
    
    console.log(`${user.cohort}: ${user.teacher}`);

  })
    
})
.catch(err => console.error('query error', err.stack));
