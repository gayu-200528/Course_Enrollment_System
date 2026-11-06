-- Course Enrollment System

CREATE DATABASE jason;
USE jason;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    std_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    fee DECIMAL(10,2),
    duration VARCHAR(20)
);

CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

--  project data 
 
 --Students Table Values

INSERT INTO Students (student_id, std_name, email, city) VALUES
(101, 'Sneha Patil', 'sneha@gmail.com', 'Pune'),
(102, 'Rohit Sharma', 'rohit@gmail.com', 'Mumbai'),
(103, 'Pooja Deshmukh', 'pooja@gmail.com', 'Latur'),
(104, 'Akash Jadhav', 'akash@gmail.com', 'Nashik'),
(105, 'Neha Kulkarni', 'neha@gmail.com', 'Aurangabad'),
(106, 'Vishal More', 'vishal@gmail.com', 'Solapur'),
(107, 'Kiran Pawar', 'kiran@gmail.com', 'Nanded'),
(108, 'Riya Shinde', 'riya@gmail.com', 'Kolhapur'),
(109, 'Amit Joshi', 'amit@gmail.com', 'Pune'),
(110, 'Priya Patil', 'priya@gmail.com', 'Latur'),
(111, 'Rahul More', 'rahul@gmail.com', 'Nashik'),
(112, 'Ayesha Khan', 'ayesha@gmail.com', 'Mumbai'),
(113, 'Mayuri Desai', 'mayuri@gmail.com', 'Pune'),
(114, 'Sagar Pawar', 'sagar@gmail.com', 'Nanded'),
(115, 'Komal Jadhav', 'komal@gmail.com', 'Solapur');

select * from Students;

-- Courses table values

INSERT INTO Courses (course_id, course_name, fee, duration) VALUES
(201, 'Python Programming', 15000, '3 Months'),
(202, 'Java Programming', 18000, '4 Months'),
(203, 'MySQL Database', 12000, '2 Months'),
(204, 'Web Development', 20000, '5 Months'),
(205, 'Data Analytics', 25000, '6 Months'),
(206, 'C Programming', 10000, '2 Months'),
(207, 'Power BI', 22000, '4 Months'),
(208, 'Data Science', 30000, '6 Months'),
(209, 'HTML and CSS', 8000, '2 Months'),
(210, 'Machine Learning', 35000, '6 Months');

select * from Courses;


-- Enrollments table values


INSERT INTO Enrollments 
(enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 101, 201, '2026-01-05'),
(2, 102, 203, '2026-01-08'),
(3, 103, 204, '2026-01-12'),
(4, 104, 202, '2026-01-15'),
(5, 105, 205, '2026-01-18'),
(6, 106, 203, '2026-01-20'),
(7, 107, 201, '2026-01-22'),
(8, 108, 206, '2026-01-25'),
(9, 102, 201, '2026-02-01'),
(10, 103, 203, '2026-02-05'),
(11, 105, 204, '2026-02-10'),
(12, 101, 205, '2026-02-15'),
(13, 109, 207, '2026-02-18'),
(14, 110, 201, '2026-02-20'),
(15, 111, 208, '2026-02-22'),
(16, 112, 203, '2026-02-25'),
(17, 113, 207, '2026-03-01'),
(18, 114, 209, '2026-03-03'),
(19, 115, 202, '2026-03-05'),
(20, 109, 208, '2026-03-08'),
(21, 110, 203, '2026-03-10'),
(22, 111, 210, '2026-03-12'),
(23, 113, 201, '2026-03-15'),
(24, 114, 205, '2026-03-18'),
(25, 115, 207, '2026-03-20');


select * from Enrollments;

