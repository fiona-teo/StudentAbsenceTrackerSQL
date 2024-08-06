-- Create table to hold student contact details
CREATE TABLE student(
studentName VARCHAR(100) NOT NULL PRIMARY KEY,
studentEmail VARCHAR(100));

-- Create table to track intervals of time that student will be absent 
CREATE TABLE studentVacation(
studentName VARCHAR(100) NOT NULL REFERENCES student (studentName),
vacationStart DATE NOT NULL,
vacationEnd DATE NOT NULL,
CHECK (vacationStart <= vacationEnd));

-- Insert info into Student table 
INSERT INTO student(studentName, studentEmail)
VALUES ('Joshua, Rutherford', 'JoshuaRutherford@gmail.com'),
('Dominic, Hughes', 'DominicHughes@yahoo.com'),
('Evan, Walsh', 'EvanWalsh@gmail.com'),
('Michael, Poole', 'MichaelPoole@gmail.com'),
('Hannah, Gray', 'HannahGray@gmail.com'),
('Emma, Ball', 'EmmaBall@gmail.com'),
('Stephanie, Slater', 'StephanieSlater@gmail.com'),
('Sam, Clarkson', 'SamClarkson@gmail.com'),
('Deirdre, Jones', 'DeirdreJones.gali@gmail.com'),
('Frank, Bond', 'FrankBond@gmail.com'),
('Owen, Mackay', 'OwenMackay@gmail.com'),
('Frank, Sharp', 'FrankSharp@gmail.com'),
('Andrew, Vance', 'AndrewVance@gmail.com'),
('Trevor, Metcalfe', 'TrevorMetcalfe@gmail.com'),
('Oliver, Berry', 'OliverBerry@gmail.com'),
('Donna, Walker', 'DonnaWalker@gmail.com'),
('Stephanie, Simpson', 'StephanieSimpson@gmail.com'),
('Amy, Fraser', 'AmyFraser@gmail.com');

-- Insert vacation dates into studentVacation table
INSERT INTO studentVacation (studentName, vacationStart, vacationEnd)
VALUES ('Joshua, Rutherford', '2024-07-05', '2024-07-20'),
('Dominic, Hughes', '2024-06-10', '2024-06-13'),
('Evan, Walsh', '2024-06-02', '2024-06-09'),
('Michael, Poole', '2024-05-28', '2024-05-31'),
('Hannah, Gray', '2024-05-28', '2024-06-04'),
('Emma, Ball', '2024-05-28', '2024-06-08'),
('Stephanie, Slater', '2024-06-17', '2024-06-21'),
('Sam, Clarkson', '2024-06-03', '2024-06-07'),
('Deirdre, Jones', '2024-05-28', '2024-05-28'),
('Frank, Bond', '2024-05-28', '2024-06-03'),
 ('Owen, Mackay', '2024-05-30', '2024-06-07'),
 ('Frank, Sharp', '2024-06-02','2024-06-16'),
 ('Andrew, Vance', '2024-05-28', '2024-05-31'),
 ('Trevor, Metcalfe', '2024-07-01', '2024-07-05'),
 ('Oliver, Berry', '2024-06-24','2024-07-02'),
 ('Oliver, Berry', '2024-07-24','2024-08-02'),
 ('Donna, Walker', '2024-05-30','2024-05-30'),
 ('Donna, Walker', '2024-07-29','2024-08-02'),
 ('Stephanie, Simpson', '2024-05-28','2024-05-31'),
 ('Amy, Fraser', '2024-05-28','2024-06-28'),
 ('Amy, Fraser', '2024-07-15','2024-07-19');
 
 -- Query student contact information based on date of absence 
SELECT studentName, studentEmail
FROM student s
JOIN studentVacation sv
ON sv.studentName = s.studentName
WHERE sv.vacationStart <= '2024-05-29'
AND sv.vacationEnd >='2024-05-29';