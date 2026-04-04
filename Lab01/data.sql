CREATE DATABASE lab01_ex1;

USE lab01_ex1;

CREATE TABLE Students(
	StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(50) NOT NULL,
    DoB DATE NOT NULL,
    Major VARCHAR(50) NOT NULL
);

CREATE TABLE Departments(
	DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL
);

CREATE TABLE Courses(
	CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL
);

CREATE TABLE Lecturers(
	LecturerID INT PRIMARY KEY AUTO_INCREMENT,
    LecturerName VARCHAR(50) NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Course_Student(
	StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Course_Lecturer(
	LecturerID INT NOT NULL,
    CourseID INT NOT NULL,
    FOREIGN KEY (LecturerID) REFERENCES Lecturers(LecturerID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

/* ================================
   Insert Data
================================ */

/* Departments */
INSERT INTO Departments (DepartmentName) VALUES
('Computer Science'),
('Information Systems'),
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('Economics'),
('Business Administration'),
('Electrical Engineering'),
('Mechanical Engineering');

/* Students */
INSERT INTO Students (StudentName, DoB, Major) VALUES
('Nguyen Van An', '2002-01-15', 'Computer Science'),
('Tran Thi Binh', '2001-03-22', 'Information Systems'),
('Le Hoang Cuong', '2002-07-10', 'Mathematics'),
('Pham Minh Duc', '2000-11-05', 'Physics'),
('Vo Thanh Ha', '2001-09-18', 'Chemistry'),
('Dang Thi Lan', '2002-05-30', 'Biology'),
('Bui Quoc Minh', '2001-12-12', 'Economics'),
('Hoang Anh Tuan', '2000-06-25', 'Business Administration'),
('Ngo Phuong Thao', '2002-02-14', 'Electrical Engineering'),
('Do Van Khoa', '2001-08-08', 'Mechanical Engineering');

/* Courses */
INSERT INTO Courses (CourseName) VALUES
('Database Systems'),
('Operating Systems'),
('Computer Networks'),
('Data Structures'),
('Software Engineering'),
('Linear Algebra'),
('Probability and Statistics'),
('Microeconomics'),
('Digital Logic'),
('Machine Learning');

/* Lecturers */
INSERT INTO Lecturers (LecturerName, DepartmentID) VALUES
('Dr. Nguyen Thanh Son', 1),
('Dr. Tran Quoc Huy', 1),
('Dr. Le Thi Mai', 2),
('Dr. Pham Van Long', 3),
('Dr. Vo Duc Thang', 4),
('Dr. Hoang Minh Chau', 5),
('Dr. Dang Thi Hoa', 6),
('Dr. Bui Tien Dung', 7),
('Dr. Nguyen Van Phuc', 9),
('Dr. Tran Thanh Nam', 10);

/* Course_Student */
INSERT INTO Course_Student (StudentID, CourseID) VALUES
(1, 1),
(1, 4),
(2, 1),
(2, 2),
(3, 6),
(4, 7),
(5, 7),
(6, 6),
(7, 8),
(8, 8),
(9, 9),
(10, 9),
(3, 10),
(4, 10),
(5, 3);

/* Course_Lecturer */
INSERT INTO Course_Lecturer (LecturerID, CourseID) VALUES
(1, 1),
(2, 2),
(1, 4),
(3, 3),
(4, 6),
(4, 7),
(8, 8),
(9, 9),
(2, 10),
(5, 5);