<b>The main task</b>

Implement a database whose schema contains:

- Table of students;
- Table of groups;
- Table of teachers;
- Table of subjects with an indication of the teacher who teaches the subject;
- A table where each student has grades in the subjects with an indication of when the grade was received;
Fill the resulting database with random data (~30-50 students, 3 groups, 5-8 subjects, 3-5 teachers, up to 20 grades for each student in all subjects). Use the Faker package for filling.

Make the following samples from the resulting database:

1. Find the 5 students with the highest grade point average in all subjects.
2. Find the student with the highest grade point average in a particular subject.
3. Find the average score in groups for a particular subject.
4. Find the average grade point average in a stream (across the entire grade table).
5. Find what courses a certain teacher teaches.
6. Find the list of students in a particular group.
7. Find the grades of students in a particular group in a particular subject.
8. Find the average grade given by a certain teacher in his/her subjects.
9. Find the list of courses a student is taking.
10. Find the list of courses taught by a certain teacher to a certain student.

For each query, create a separate file query_number.sql, where you substitute the query number for number. The file contains a SQL statement that can be executed both in the database terminal and through cursor.execute(sql)

<b>Additional task</b>

For an additional task, make the following queries of increased complexity:

1. The average grade that a certain teacher gives to a certain student.
2. Grades of students in a certain group in a certain subject at the last class.
