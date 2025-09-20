CREATE DATABASE StudentPeformanceDB;
USE StudentPeformanceDB;
--Students table
CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
	Name NVARCHAR(100),
	Class NVARCHAR(10),
	Section NVARCHAR(5)
);
--Subjects table
CREATE TABLE Subjects(
	SubjectID INT PRIMARY KEY,
	SubjectName NVARCHAR(100)
);
--Marcks table
CREATE TABLE Marks(
	MarkID INT PRIMARY KEY,
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
	SubjectID INT FOREIGN KEY REFERENCES Subjects(SubjectID),
	MarksObtained DECIMAL(5,2),
	ExamDate DATE
);
--Attendance table
CREATE TABLE Attendance(
	AttendanceID INT PRIMARY KEY,
	StudentID INT FOREIGN KEY REFERENCES Students(StudentID),
	AttendanceDate DATE,
	Status NVARCHAR(10)
);

--Student details
--Students
INSERT INTO Students (StudentID, Name, Class, Section) VALUES
(1, 'Arav Sharma', '10','A'),
(2, 'Diya Patel','10','A'),
(3, 'Rohan Mehta','10','B'),
(4, 'Sneha Reddy', '10', 'B'),
(5, 'Karthik Iyer', '10', 'C');

--Subjects
INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(101, 'Mathematics'),
(102, 'Science'),
(103, 'English'),
(104, 'Social Studies'),
(105, 'Computer Science');

--Marks
INSERT INTO Marks (MarkID, StudentID, SubjectID, MarksObtained, ExamDate) VALUES
--Aarav
(1, 1, 101, 88, '2025-09-01'),
(2, 1, 102, 92, '2025-09-01'),
(3, 1, 103, 85, '2025-09-01'),
(4, 1, 104, 78, '2025-09-01'),
(5, 1, 105, 90, '2025-09-01'),
--Diya
(6, 2, 101, 72, '2025-09-01'),
(7, 2, 102, 68, '2025-09-01'),
(8, 2, 103, 75, '2025-09-01'),
(9, 2, 104, 70, '2025-09-01'),
(10, 2, 105, 80, '2025-09-01'),
--Rohan
(11, 3, 101, 45, '2025-09-01'),
(12, 3, 102, 50, '2025-09-01'),
(13, 3, 103, 48, '2025-09-01'),
(14, 3, 104, 52, '2025-09-01'),
(15, 3, 105, 55, '2025-09-01'),
--Sneha
(16, 4, 101, 95, '2025-09-01'),
(17, 4, 102, 98, '2025-09-01'),
(18, 4, 103, 93, '2025-09-01'),
(19, 4, 104, 96, '2025-09-01'),
(20, 4, 105, 99, '2025-09-01'),
--Karthik
(21, 5, 101, 60, '2025-09-01'),
(22, 5, 102, 58, '2025-09-01'),
(23, 5, 103, 62, '2025-09-01'),
(24, 5, 104, 65, '2025-09-01'),
(25, 5, 105, 59, '2025-09-01');

--Attendance
--September 2025 Attendance (10 days per student)
INSERT INTO Attendance (AttendanceID, StudentID, AttendanceDate, Status) VALUES
--Aarav: 9 present, 1 absent
(1, 1, '2025-09-01', 'Present'),
(2, 1, '2025-09-02', 'Present'),
(3, 1, '2025-09-03', 'Present'),
(4, 1, '2025-09-04', 'Present'),
(5, 1, '2025-09-05', 'Present'),
(6, 1, '2025-09-06', 'Present'),
(7, 1, '2025-09-07', 'Present'),
(8, 1, '2025-09-08', 'Present'),
(9, 1, '2025-09-09', 'Absent'),
(10, 1, '2025-09-10', 'Present'),

-- Diya: 7 Present, 3 Absent
(11, 2, '2025-09-01', 'Present'),
(12, 2, '2025-09-02', 'Absent'),
(13, 2, '2025-09-03', 'Present'),
(14, 2, '2025-09-04', 'Absent'),
(15, 2, '2025-09-05', 'Present'),
(16, 2, '2025-09-06', 'Present'),
(17, 2, '2025-09-07', 'Present'),
(18, 2, '2025-09-08', 'Absent'),
(19, 2, '2025-09-09', 'Present'),
(20, 2, '2025-09-10', 'Present'),

-- Rohan: 5 Present, 5 Absent
(21, 3, '2025-09-01', 'Absent'),
(22, 3, '2025-09-02', 'Present'),
(23, 3, '2025-09-03', 'Absent'),
(24, 3, '2025-09-04', 'Present'),
(25, 3, '2025-09-05', 'Absent'),
(26, 3, '2025-09-06', 'Present'),
(27, 3, '2025-09-07', 'Absent'),
(28, 3, '2025-09-08', 'Present'),
(29, 3, '2025-09-09', 'Absent'),
(30, 3, '2025-09-10', 'Present'),

-- Sneha: 10 Present
(31, 4, '2025-09-01', 'Present'),
(32, 4, '2025-09-02', 'Present'),
(33, 4, '2025-09-03', 'Present'),
(34, 4, '2025-09-04', 'Present'),
(35, 4, '2025-09-05', 'Present'),
(36, 4, '2025-09-06', 'Present'),
(37, 4, '2025-09-07', 'Present'),
(38, 4, '2025-09-08', 'Present'),
(39, 4, '2025-09-09', 'Present'),
(40, 4, '2025-09-10', 'Present'),

-- Karthik: 6 Present, 4 Absent
(41, 5, '2025-09-01', 'Present'),
(42, 5, '2025-09-02', 'Absent'),
(43, 5, '2025-09-03', 'Present'),
(44, 5, '2025-09-04', 'Absent'),
(45, 5, '2025-09-05', 'Present'),
(46, 5, '2025-09-06', 'Present'),
(47, 5, '2025-09-07', 'Absent'),
(48, 5, '2025-09-08', 'Present'),
(49, 5, '2025-09-09', 'Absent'),
(50, 5, '2025-09-10', 'Present');

-- Student performance view
DROP VIEW vw_StudentPerformance
CREATE VIEW vw_StudentPerformance AS
SELECT 
    s.StudentID,
    s.Name,
    s.Class,
    s.Section,
    ROUND(AVG(m.MarksObtained), 2) AS AvgMarks,
    CASE 
        WHEN AVG(m.MarksObtained) >= 85 THEN 'Excellent'
        WHEN AVG(m.MarksObtained) >= 70 THEN 'Good'
        WHEN AVG(m.MarksObtained) >= 50 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS PerformanceCategory
FROM Students s
JOIN Marks m ON s.StudentID = m.StudentID
GROUP BY s.StudentID, s.Name, s.Class, s.Section;


--Attendance summary view
CREATE VIEW vw_StudentAttendance AS
SELECT
	s.StudentID,
	s.Name,
	COUNT(*) AS TotalDays,
	SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS DaysPresent,
	ROUND(CAST(SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*) * 100, 2) AS AttenadancePercentage
FROM Students s
JOIN Attendance a ON s.StudentID = a.StudentID
GROUP BY s.StudentID, s.Name;