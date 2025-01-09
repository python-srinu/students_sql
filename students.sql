SELECT * FROM db.students;


/* How many students are in each department? */
SELECT Department, COUNT(*) AS StudentCount
FROM students
GROUP BY Department;

/* What is the average GPA for each department? */
SELECT Department, AVG(GPA) AS AverageGPA
FROM Students
GROUP BY Department;

/* Who has the highest GPA in the dataset? */
SELECT Name, GPA FROM Students
ORDER BY GPA DESC LIMIT 1;

/* Which students are graduating in 2025? */
SELECT Name FROM Students
WHERE GraduationYear = 2025;

/* What is the average age of students in the dataset? */
SELECT AVG(Age) AS AverageAge
FROM Students;

/* How many students are younger than 20? */
SELECT COUNT(*) AS StudentsUnder20
FROM Students WHERE Age < 20;

/* List all students from the Physics department. */
SELECT Name, Age, GPA
FROM Students WHERE Department = 'Physics';

/* Which department has the highest average GPA? */
SELECT Department FROM Students
GROUP BY Department ORDER BY AVG(GPA) DESC LIMIT 1;

/* Find students with a GPA higher than 3.5. */ 
SELECT Name, GPA, Department
FROM Students
WHERE GPA > 3.5;

/* How many students are in their final year (GraduationYear = 2025)? */
SELECT COUNT(*) AS FinalYearStudents
FROM Students
WHERE GraduationYear = 2025;

/* What is the highest GPA among Computer Science students? */
SELECT MAX(GPA) AS HighestGPA
FROM Students WHERE Department = 'Computer Science';

/*List students whose GPA is below 2.5.*/
SELECT Name, GPA, Department
FROM Students
WHERE GPA < 2.5;

/* Which students have a ".com" email address? */
SELECT Name, Email
FROM Students
WHERE Email LIKE '%gmail.com';

/* Find students older than 22 years. */
SELECT Name, Age, Department
FROM Students
WHERE Age > 22;

/* What is the total number of students in the dataset? */
SELECT COUNT(*) AS TotalStudents
FROM Students;

/* List students with the same Graduation Year. */
SELECT GraduationYear, GROUP_CONCAT(Name) AS Students
FROM Students
GROUP BY GraduationYear;

/* Find the youngest student(s) in the dataset. */
SELECT Name, Age
FROM Students ORDER BY Age ASC
LIMIT 1;

/* Which students have a GPA between 3.0 and 3.5? */
SELECT Name, GPA, Department
FROM Students
WHERE GPA BETWEEN 3.0 AND 3.5;
