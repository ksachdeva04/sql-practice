select * from hostel.students;
-- specific cols
select student_name,course 
from hostel.students;
-- Find all unique courses offered by students currently registered in the hostel.
select Distinct course 
from hostel.students;
-- Find all unique combinations of gender and course represented in the hostel.
select distinct gender, course
from hostel.students;
-- Find all students who belong to the BTech IT course.
select * from hostel.students
where course = 'BTech IT'
-- Find all students whose age is greater than 20.
select * from hostel.students
where age>20;
-- Find all students whose academic year is greater than or equal to 3.
select * from hostel.students
where year>=3;
-- Find all students who are not enrolled in BTech CSE.
select * from hostel.students
where course != 'BTech CSE';
-- Find students who are older than 19 AND enrolled in BTech CSE.
select * from hostel.students
where
age>19 and course ='BTech CSE';
-- Find students who are in academic year 2 AND belong to the Male gender category.
select * from hostel.students
where
year = 2 and gender = 'Male';
-- Find students enrolled in either BTech IT OR BTech ECE.
select * from hostel.students
where
course = 'BTech IT' or course ='BTech ECE';
-- Find students who are either older than 21 OR studying in academic year 4.
select * from hostel.students
where
age>21 or year=4;
-- Find all students enrolled in BTech IT, BTech CSE or BTech ECE using IN.
select * from hostel.students
where
course IN ('BTech IT','BTech CSE','BTech ECE');