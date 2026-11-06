mysql> use jason;

mysql> select * from students;
+------------+----------------+------------------+------------+
| student_id | std_name       | email            | city       |
+------------+----------------+------------------+------------+
|        101 | Sneha Patil    | sneha@gmail.com  | Pune       |
|        102 | Rohit Sharma   | rohit@gmail.com  | Mumbai     |
|        103 | Pooja Deshmukh | pooja@gmail.com  | Latur      |
|        104 | Akash Jadhav   | akash@gmail.com  | Nashik     |
|        105 | Neha Kulkarni  | neha@gmail.com   | Aurangabad |
|        106 | Vishal More    | vishal@gmail.com | Solapur    |
|        107 | Kiran Pawar    | kiran@gmail.com  | Nanded     |
|        108 | Riya Shinde    | riya@gmail.com   | Kolhapur   |
|        109 | Amit Joshi     | amit@gmail.com   | Pune       |
|        110 | Priya Patil    | priya@gmail.com  | Latur      |
|        111 | Rahul More     | rahul@gmail.com  | Nashik     |
|        112 | Ayesha Khan    | ayesha@gmail.com | Mumbai     |
|        113 | Mayuri Desai   | mayuri@gmail.com | Pune       |
|        114 | Sagar Pawar    | sagar@gmail.com  | Nanded     |
|        115 | Komal Jadhav   | komal@gmail.com  | Solapur    |
+------------+----------------+------------------+------------+
15 rows in set (0.11 sec)

mysql> select * from courses;
+-----------+--------------------+----------+----------+
| course_id | course_name        | fee      | duration |
+-----------+--------------------+----------+----------+
|       201 | Python Programming | 15000.00 | 3 Months |
|       202 | Java Programming   | 18000.00 | 4 Months |
|       203 | MySQL Database     | 12000.00 | 2 Months |
|       204 | Web Development    | 20000.00 | 5 Months |
|       205 | Data Analytics     | 25000.00 | 6 Months |
|       206 | C Programming      | 10000.00 | 2 Months |
|       207 | Power BI           | 22000.00 | 4 Months |
|       208 | Data Science       | 30000.00 | 6 Months |
|       209 | HTML and CSS       |  8000.00 | 2 Months |
|       210 | Machine Learning   | 35000.00 | 6 Months |
+-----------+--------------------+----------+----------+
10 rows in set (0.02 sec)


mysql> select * from enrollments;
+---------------+------------+-----------+-----------------+
| enrollment_id | student_id | course_id | enrollment_date |
+---------------+------------+-----------+-----------------+
|             1 |        101 |       201 | 2026-01-05      |
|             2 |        102 |       203 | 2026-01-08      |
|             3 |        103 |       204 | 2026-01-12      |
|             4 |        104 |       202 | 2026-01-15      |
|             5 |        105 |       205 | 2026-01-18      |
|             6 |        106 |       203 | 2026-01-20      |
|             7 |        107 |       201 | 2026-01-22      |
|             8 |        108 |       206 | 2026-01-25      |
|             9 |        102 |       201 | 2026-02-01      |
|            10 |        103 |       203 | 2026-02-05      |
|            11 |        105 |       204 | 2026-02-10      |
|            12 |        101 |       205 | 2026-02-15      |
|            13 |        109 |       207 | 2026-02-18      |
|            14 |        110 |       201 | 2026-02-20      |
|            15 |        111 |       208 | 2026-02-22      |
|            16 |        112 |       203 | 2026-02-25      |
|            17 |        113 |       207 | 2026-03-01      |
|            18 |        114 |       209 | 2026-03-03      |
|            19 |        115 |       202 | 2026-03-05      |
|            20 |        109 |       208 | 2026-03-08      |
|            21 |        110 |       203 | 2026-03-10      |
|            22 |        111 |       210 | 2026-03-12      |
|            23 |        113 |       201 | 2026-03-15      |
|            24 |        114 |       205 | 2026-03-18      |
|            25 |        115 |       207 | 2026-03-20      |
+---------------+------------+-----------+-----------------+
25 rows in set (0.02 sec)

-- Q1 . Display The Complete Enrollment Details Including Student Name, Course Name, Fee And Enrollment Date. 

Query
mysql> Select s.std_name, c.course_name, c.fee, e.enrollment_date
    -> from students as s join enrollments as e on s.student_id = e.student_id
    -> join courses as c on c.course_id = e.course_id;
+----------------+--------------------+----------+-----------------+
| std_name       | course_name        | fee      | enrollment_date |
+----------------+--------------------+----------+-----------------+
| Sneha Patil    | Python Programming | 15000.00 | 2026-01-05      |
| Kiran Pawar    | Python Programming | 15000.00 | 2026-01-22      |
| Rohit Sharma   | Python Programming | 15000.00 | 2026-02-01      |
| Priya Patil    | Python Programming | 15000.00 | 2026-02-20      |
| Mayuri Desai   | Python Programming | 15000.00 | 2026-03-15      |
| Akash Jadhav   | Java Programming   | 18000.00 | 2026-01-15      |
| Komal Jadhav   | Java Programming   | 18000.00 | 2026-03-05      |
| Rohit Sharma   | MySQL Database     | 12000.00 | 2026-01-08      |
| Vishal More    | MySQL Database     | 12000.00 | 2026-01-20      |
| Pooja Deshmukh | MySQL Database     | 12000.00 | 2026-02-05      |
| Ayesha Khan    | MySQL Database     | 12000.00 | 2026-02-25      |
| Priya Patil    | MySQL Database     | 12000.00 | 2026-03-10      |
| Pooja Deshmukh | Web Development    | 20000.00 | 2026-01-12      |
| Neha Kulkarni  | Web Development    | 20000.00 | 2026-02-10      |
| Neha Kulkarni  | Data Analytics     | 25000.00 | 2026-01-18      |
| Sneha Patil    | Data Analytics     | 25000.00 | 2026-02-15      |
| Sagar Pawar    | Data Analytics     | 25000.00 | 2026-03-18      |
| Riya Shinde    | C Programming      | 10000.00 | 2026-01-25      |
| Amit Joshi     | Power BI           | 22000.00 | 2026-02-18      |
| Mayuri Desai   | Power BI           | 22000.00 | 2026-03-01      |
| Komal Jadhav   | Power BI           | 22000.00 | 2026-03-20      |
| Rahul More     | Data Science       | 30000.00 | 2026-02-22      |
| Amit Joshi     | Data Science       | 30000.00 | 2026-03-08      |
| Sagar Pawar    | HTML and CSS       |  8000.00 | 2026-03-03      |
| Rahul More     | Machine Learning   | 35000.00 | 2026-03-12      |
+----------------+--------------------+----------+-----------------+
25 rows in set (0.01 sec)

-- Q2. Find All Student Who Are Currently Enrolled In Python Programming. 

Query
mysql> Select s.std_name from students as s join enrollments as e
    -> on s.student_id = e.student_id join courses as c on c.course_id = e.course_id
    -> where c.course_name = 'python Programming';
+--------------+
| std_name     |
+--------------+
| Sneha Patil  |
| Kiran Pawar  |
| Rohit Sharma |
| Priya Patil  |
| Mayuri Desai |
+--------------+
5 rows in set (0.01 sec)

-- Q3. Find The Total Number Of Students Enrolled In Each Course. 

Query
mysql> Select c.course_name, count(e.student_id) as total_students
    -> from courses as c join enrollments as e on c.course_id = e.course_id
    -> group by c.course_id, c.course_name;
+--------------------+----------------+
| course_name        | total_students |
+--------------------+----------------+
| Python Programming |              5 |
| Java Programming   |              2 |
| MySQL Database     |              5 |
| Web Development    |              2 |
| Data Analytics     |              3 |
| C Programming      |              1 |
| Power BI           |              3 |
| Data Science       |              2 |
| HTML and CSS       |              1 |
| Machine Learning   |              1 |
+--------------------+----------------+
10 rows in set (0.02 sec)

-- Q4. Display Students Whose Name Starts With R. 

Query
mysql> Select * from students where std_name like 'R%';
+------------+--------------+-----------------+----------+
| student_id | std_name     | email           | city     |
+------------+--------------+-----------------+----------+
|        102 | Rohit Sharma | rohit@gmail.com | Mumbai   |
|        108 | Riya Shinde  | riya@gmail.com  | Kolhapur |
|        111 | Rahul More   | rahul@gmail.com | Nashik   |
+------------+--------------+-----------------+----------+
3 rows in set (0.01 sec)

-- Q5. Find The Student Who Has Spent The Highest Amount On Course Fees. 

Query:
mysql>  Select s.std_name, sum(c.fee) as total_spent from students as s
    -> join enrollments as e on s.student_id = e.student_id join courses as c
    -> on c.course_id = e.course_id group by s.student_id, s.std_name
    -> order by total_spent desc limit 1;
+------------+-------------+
| std_name   | total_spent |
+------------+-------------+
| Rahul More |    65000.00 |
+------------+-------------+
1 row in set (0.00 sec)

-- Q6. Find Course Whose Fee Is Greater Than The Average Course Fee. 

Query:
mysql> Select course_name from courses where fee > (select avg(fee) from courses);
+------------------+
| course_name      |
+------------------+
| Web Development  |
| Data Analytics   |
| Power BI         |
| Data Science     |
| Machine Learning |
+------------------+
5 rows in set (0.00 sec)

-- Q7. Find Students Who Have Enrolled In More Than One Course. 

Query:
mysql> Select s.std_name, count(e.course_id) as course_count from students as s
    -> join enrollments as e on s.student_id = e.student_id group by s.student_id, s.std_name
    -> having count(e.course_id) > 1;
+----------------+--------------+
| std_name       | course_count |
+----------------+--------------+
| Sneha Patil    |            2 |
| Rohit Sharma   |            2 |
| Pooja Deshmukh |            2 |
| Neha Kulkarni  |            2 |
| Amit Joshi     |            2 |
| Priya Patil    |            2 |
| Rahul More     |            2 |
| Mayuri Desai   |            2 |
| Sagar Pawar    |            2 |
| Komal Jadhav   |            2 |
+----------------+--------------+
10 rows in set (0.01 sec)

-- Q8. Display All Course Sorted By Fee From Highest To Lowest. 

Query:
mysql> Select course_name, fee from courses order by fee desc;
+--------------------+----------+
| course_name        | fee      |
+--------------------+----------+
| Machine Learning   | 35000.00 |
| Data Science       | 30000.00 |
| Data Analytics     | 25000.00 |
| Power BI           | 22000.00 |
| Web Development    | 20000.00 |
| Java Programming   | 18000.00 |
| Python Programming | 15000.00 |
| MySQL Database     | 12000.00 |
| C Programming      | 10000.00 |
| HTML and CSS       |  8000.00 |
+--------------------+----------+
10 rows in set (0.00 sec)

-- Q9. Identify The Most Popular Course Based On The Highest Number Of Enrollments. 

Query:
mysql> Select c.course_name, count(e.course_id) as total_enroll from courses as c
    -> join enrollments as e on c.course_id = e.course_id group by c.course_id, c.course_name
    -> order by total_enroll desc limit 1;
+--------------------+--------------+
| course_name        | total_enroll |
+--------------------+--------------+
| Python Programming |            5 |
+--------------------+--------------+
1 row in set (0.00 sec)

-- Q10. Find The Second-Highest Course Fee. 

Query:
mysql> Select max(fee) as second_highest  from courses where fee<(select max(fee) from courses);
+----------------+
| second_highest |
+----------------+
|       30000.00 |
+----------------+
1 row in set (0.01 sec)

-- Q11. Generate A Report Showing Each Student, Number Of Course Enrolled And Total Amount Spent. 

Query:
mysql> Select s.std_name,count(e.course_id) as number_of_courses,
    -> sum(c.fee) as total_spent from students as s join enrollments as e on s.student_id = e.student_id join courses as c on c.course_id = e.course_id
    -> group by s.student_id, s.std_name;
+----------------+-------------------+-------------+
| std_name       | number_of_courses | total_spent |
+----------------+-------------------+-------------+
| Sneha Patil    |                 2 |    40000.00 |
| Kiran Pawar    |                 1 |    15000.00 |
| Rohit Sharma   |                 2 |    27000.00 |
| Priya Patil    |                 2 |    27000.00 |
| Mayuri Desai   |                 2 |    37000.00 |
| Akash Jadhav   |                 1 |    18000.00 |
| Komal Jadhav   |                 2 |    40000.00 |
| Vishal More    |                 1 |    12000.00 |
| Pooja Deshmukh |                 2 |    32000.00 |
| Ayesha Khan    |                 1 |    12000.00 |
| Neha Kulkarni  |                 2 |    45000.00 |
| Sagar Pawar    |                 2 |    33000.00 |
| Riya Shinde    |                 1 |    10000.00 |
| Amit Joshi     |                 2 |    52000.00 |
| Rahul More     |                 2 |    65000.00 |
+----------------+-------------------+-------------+
15 rows in set (0.00 sec)

-- Q12. Find Students Who Enrolled In a Course After February 1,2026. 

Query:
mysql>  Select s.std_name from students as s join enrollments as e
    -> on s.student_id = e.student_id where e.enrollment_date > '2026-02-01';
+----------------+
| std_name       |
+----------------+
| Pooja Deshmukh |
| Neha Kulkarni  |
| Sneha Patil    |
| Amit Joshi     |
| Priya Patil    |
| Rahul More     |
| Ayesha Khan    |
| Mayuri Desai   |
| Sagar Pawar    |
| Komal Jadhav   |
| Amit Joshi     |
| Priya Patil    |
| Rahul More     |
| Mayuri Desai   |
| Sagar Pawar    |
| Komal Jadhav   |
+----------------+
16 rows in set (0.00 sec)

-- Q13. Find Students Who Are Enrolled In Both Python Programming And MySQL Database. 

Query:
mysql> Select s.std_name from students as s join enrollments as e
    -> on s.student_id = e.student_id join courses as c on c.course_id = e.course_id
    -> where c.course_name in ('python programming', 'mysql database')
    -> group by s.student_id, s.std_name having count(c.course_name) = 2;
+--------------+
| std_name     |
+--------------+
| Rohit Sharma |
| Priya Patil  |
+--------------+
2 rows in set (0.01 sec)

-- Q14. Display The Top 3 Courses Based On The Number Of Students Enrolled. 

Query:
mysql> Select c.course_name, count(e.student_id) as total_enrollments from courses as c
    -> join enrollments as e on c.course_id = e.course_id group by c.course_id, c.course_name
    -> order by total_enrollments desc limit 3;
+--------------------+-------------------+
| course_name        | total_enrollments |
+--------------------+-------------------+
| Python Programming |                 5 |
| MySQL Database     |                 5 |
| Data Analytics     |                 3 |
+--------------------+-------------------+
3 rows in set (0.00 sec)

-- Q15. Display All Courses With A Fee Less Than 15,000. 

Query:
mysql> Select * from courses where fee<15000;
+-----------+----------------+----------+----------+
| course_id | course_name    | fee      | duration |
+-----------+----------------+----------+----------+
|       203 | MySQL Database | 12000.00 | 2 Months |
|       206 | C Programming  | 10000.00 | 2 Months |
|       209 | HTML and CSS   |  8000.00 | 2 Months |
+-----------+----------------+----------+----------+
3 rows in set (0.01 sec)

-- Q16. Display All Students Along With Their Enrollment Date. 

Query:
mysql> Select s.std_name, e.enrollment_date from students as s
    -> join enrollments as e on s.student_id = e.student_id;
+----------------+-----------------+
| std_name       | enrollment_date |
+----------------+-----------------+
| Sneha Patil    | 2026-01-05      |
| Sneha Patil    | 2026-02-15      |
| Rohit Sharma   | 2026-01-08      |
| Rohit Sharma   | 2026-02-01      |
| Pooja Deshmukh | 2026-01-12      |
| Pooja Deshmukh | 2026-02-05      |
| Akash Jadhav   | 2026-01-15      |
| Neha Kulkarni  | 2026-01-18      |
| Neha Kulkarni  | 2026-02-10      |
| Vishal More    | 2026-01-20      |
| Kiran Pawar    | 2026-01-22      |
| Riya Shinde    | 2026-01-25      |
| Amit Joshi     | 2026-02-18      |
| Amit Joshi     | 2026-03-08      |
| Priya Patil    | 2026-02-20      |
| Priya Patil    | 2026-03-10      |
| Rahul More     | 2026-02-22      |
| Rahul More     | 2026-03-12      |
| Ayesha Khan    | 2026-02-25      |
| Mayuri Desai   | 2026-03-01      |
| Mayuri Desai   | 2026-03-15      |
| Sagar Pawar    | 2026-03-03      |
| Sagar Pawar    | 2026-03-18      |
| Komal Jadhav   | 2026-03-05      |
| Komal Jadhav   | 2026-03-20      |
+----------------+-----------------+
25 rows in set (0.00 sec)
