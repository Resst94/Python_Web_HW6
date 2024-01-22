-- Таблиця груп
DROP TABLE IF EXISTS [groups];
CREATE TABLE [groups] (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name STRING UNIQUE
);

-- Таблиця студентів
DROP TABLE IF EXISTS students;
CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  fullname STRING,
  group_id REFERENCES [groups] (id)
);

-- Таблиця викладачів
DROP TABLE IF EXISTS teachers;
CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  fullname STRING
);

-- Таблиця предметів
DROP TABLE IF EXISTS disciplines;
CREATE TABLE disciplines (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  name STRING UNIQUE,
  teacher_id REFERENCES teachers (id)
);

-- Таблиця оцінок
DROP TABLE IF EXISTS grades;
CREATE TABLE grades (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  student_id REFERENCES students (id),
  discipline_id REFERENCES disciplines (id),
  grade INTEGER,
  date_of DATE
);