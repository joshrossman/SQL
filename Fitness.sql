CREATE DATABASE fitness_center;
USE fitness_center;
CREATE TABLE Members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members(id, name,age)
VALUES(6, 'Jon Doe',18),
(7, 'Jane Doe',24),
(8, 'Michael Smith',56),
(9, 'Josh Jordan',72),
(10, 'George Washington',25),
(11, 'Abraham Lincoln',50),
(12, 'Albert Einstein',46),
(13, 'Steve Jobs',47);

INSERT INTO WorkoutSessions (session_id,member_id,session_date,session_time,activity)
VALUES
(1,7, '2024-10-1','10:50','Swim'),
(2,8, '2024-9-1','9:50','Zumba'),
(3,9, '2024-10-8','10:30','Track'),
(4,10, '2024-10-10','1:50','Tennis'),
(5,11, '2024-10-14','4:50','Swim'),
(6,12, '2024-10-13','5:00','Track'),
(7,13, '2024-10-21','7:30','Weights'),
(8,7, '2024-10-11','4:45','Weights'),
(9,8, '2024-10-17','9:25','Running'),
(10,7, '2024-10-18','10:50','Spinning');

UPDATE WorkoutSessions
SET session_time='4:50'
WHERE session_id =1;
SELECT * FROM WorkoutSessions
WHERE session_id=1;

SET SQL_SAFE_UPDATES=0;
DELETE FROM WorkoutSessions 
WHERE member_id =7;
SET SQL_SAFE_UPDATES=1;
DELETE FROM Members 
WHERE id=7;


