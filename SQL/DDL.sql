CREATE TABLE EmployeeDetails (
    DetailID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Age INT NOT NULL,
    Address VARCHAR(255) NOT NULL,
    ResidentNumber VARCHAR(14) NOT NULL,
    MaritalStatus ENUM('기혼', '미혼') NOT NULL,
    Education VARCHAR(255),
    Salary DECIMAL(10, 2),
    StartDate DATE NOT NULL,
    CurrentStatus ENUM('Y', 'N') DEFAULT 'Y'
);
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255) NOT NULL
);
CREATE TABLE Positions (
    PositionID INT PRIMARY KEY AUTO_INCREMENT,
    PositionName VARCHAR(255) NOT NULL
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    DetailID INT NOT NULL,
    DepartmentID INT NOT NULL,
    PositionID INT NOT NULL,
    EmployeeType VARCHAR(50) NOT NULL,
    FOREIGN KEY (DetailID) REFERENCES EmployeeDetails(DetailID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);
CREATE TABLE Qualifications (
    QualificationID INT PRIMARY KEY AUTO_INCREMENT,
    DetailID INT NOT NULL,
    QualificationName VARCHAR(255) NOT NULL,
    IssueDate DATE NOT NULL,
    ExpiryDate DATE,
    FOREIGN KEY (DetailID) REFERENCES EmployeeDetails(DetailID)
);
CREATE TABLE DispatchDetails (
    DispatchID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    DispatchStartDate DATE NOT NULL,
    DispatchEndDate DATE,
    DispatchRole VARCHAR(255) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    CheckIn DATETIME,
    CheckOut DATETIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Families (
    FamilyID INT PRIMARY KEY AUTO_INCREMENT,
    DetailID INT NOT NULL,
    Relationship VARCHAR(255) NOT NULL,
    FamilyMemberName VARCHAR(255) NOT NULL,
    BirthDate DATE NOT NULL,
    ContactNumber VARCHAR(15),
    FOREIGN KEY (DetailID) REFERENCES EmployeeDetails(DetailID)
);
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    ProjectName VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Responsibility VARCHAR(255) NOT NULL,
    Role VARCHAR(255) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    PreviousSalary DECIMAL(10, 2) NOT NULL,
    CurrentSalary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Scores (
    ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    EvaluationName VARCHAR(255) NOT NULL,
    ScoreValue INT NOT NULL,
    EvaluationReason VARCHAR(255) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Holidays (
    HolidayID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    HolidayType VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    RemainingDays INT NOT NULL,
    ApprovalStatus ENUM('승인', '대기') NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE Rents (
    RentID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    AssetName VARCHAR(255) NOT NULL,
    Quantity INT DEFAULT 1,
    RentStartDate DATE NOT NULL,
    RentEndDate DATE,
    AssetStatus ENUM('정상', '손상') NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE EmployeeEducation (
    EducationID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
CREATE TABLE ChangeHistory(
HistoryId INT PRIMARY KEY AUTO_INCREMENT,
EmployeeID INT NOT NULL,
PositionID INT NOT NULL,
DepartmentID INT NOT NULL,
AppointmentDate DATETIME NOT NULL,
FOREIGN KEY (EmployeeId) REFERENCES employees(employeeid),
FOREIGN KEY (positionId) REFERENCES positions(positionid),
FOREIGN KEY (departmentid) REFERENCES departments(departmentid));

ALTER TABLE `positions` AUTO_INCREMENT = 1111;
ALTER TABLE `Departments` AUTO_INCREMENT = 101;