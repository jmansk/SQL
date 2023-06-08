CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Courses
(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseDescription TEXT
);

CREATE TABLE Enrollments
(
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    Grade FLOAT,
    PRIMARY KEY(StudentID, CourseID),
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID)
);
