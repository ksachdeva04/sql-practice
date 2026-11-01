create schema hostel;
CREATE TABLE hostel.students (
    student_id INT,
    student_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    course VARCHAR(100),
    year INT,
    admission_date DATE
);
select * from hostel.students;
-- Making student id Primary Key with constraint named pkey
alter table hostel.students
add constraint pkey
primary key(student_id);
-- NOT NULL
ALTER TABLE hostel.students
ALTER COLUMN student_name SET NOT NULL;
-- Email column (UNIQUE)
ALTER TABLE hostel.students
ADD COLUMN email VARCHAR(100);
alter table hostel.students
add constraint unique_student_email
UNIQUE(email);
-- student should be at least 16 years old
alter table hostel.students
add constraint valid_student_age
CHECK(age>=16);
-- insert student records
INSERT INTO hostel.students
(student_id, student_name, age, gender, course, year, admission_date)
VALUES
(101, 'Rahul Sharma', 20, 'Male', 'BTech IT', 2, '2026-08-01'),
(102, 'Aman Verma', 21, 'Male', 'BTech CSE', 3, '2026-08-01'),
(103, 'Sarah Johnson', 19, 'Female', 'BTech ECE', 2, '2026-08-02'),
(104, 'Riya Mehta', 22, 'Female', 'BTech IT', 4, '2026-08-02'),
(105, 'Arjun Singh', 20, 'Male', 'BTech CSE', 2, '2026-08-03');
select * from hostel.students;
select student_name,course from hostel.students;
