/* 1 */
SELECT
  users.id,
  users.name,
  cities.name AS city
FROM users
JOIN cities ON  users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

/* 2 */
SELECT
  testimonials.id,
  users.name,
  writers.name AS writer,
  recipients.name AS recipient
  FROM testimonials
  JOIN users writers
  ON testimonials."writerId" = writers.id
  JOIN users recipients
  ON testimonials."recipientId" = recipients.id;

  /* 3 */
SELECT
  users.id,
  users.name,
  courses.name AS course,
  schools.name AS school,
  educations."endDate"
FROM users
JOIN educations
ON users.id = educations."userId"
JOIN courses
ON educations."courseId" = courses.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE users.id = 30
AND educations.status = 'finished';

/* 4 */
SELECT
  users.id,
  users.name,
  roles.name AS "role",
  companies.name AS company,
  experiences."startDate"
FROM users
JOIN experiences
ON users.id = experiences."userId"
JOIN roles
ON experiences."roleId" = roles.id
JOIN companies
ON experiences."companyId" = companies.id
WHERE users.id = 50
AND experiences."endDate" IS NULL;
