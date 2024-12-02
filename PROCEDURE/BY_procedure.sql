-- 보너스지급
DELIMITER //
CREATE PROCEDURE UpdateEmployeeBonus(IN em_id INT, IN new_bonus DECIMAL(10, 2))
BEGIN
    UPDATE Payments
    SET Bonus = new_bonus
    WHERE EmployeeID = em_id;
END;
//
DELIMITER ;

-- 보너스지급내역조회
DELIMITER //
CREATE PROCEDURE GetBonusDetails(IN min_bonus DECIMAL(10, 2))
BEGIN
    SELECT EmployeeID, Bonus
    FROM Payments
    WHERE Bonus > min_bonus;
END;
//
DELIMITER ;

-- 프로젝트등록
DELIMITER //
CREATE PROCEDURE RegisterProject(
    IN emp_id INT,
    IN project_name VARCHAR(255),
    IN start_date DATE,
    IN end_date DATE,
    IN responsibility VARCHAR(255),
    IN role VARCHAR(255),
    IN salary DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Projects (EmployeeID, ProjectName, StartDate, EndDate, Responsibility, Role, Salary)
    VALUES (emp_id, project_name, start_date, end_date, responsibility, role, salary);
END;
//
DELIMITER ;

-- 프로젝트수정
DELIMITER //
CREATE PROCEDURE UpdateProjectName(
    IN project_id INT,
    IN new_project_name VARCHAR(255)
)
BEGIN
    UPDATE Projects
    SET ProjectName = new_project_name
    WHERE ProjectID = project_id;
END;
//
DELIMITER ;

-- 프로젝트참여직원조회
DELIMITER //
CREATE PROCEDURE GetProjectParticipants(
    IN project_id INT
)
BEGIN
    SELECT EmployeeID, Role 
    FROM Projects 
    WHERE ProjectID = project_id;
END;
//
DELIMITER ;

-- 참여중인 프로젝트 목록조회
DELIMITER //
CREATE PROCEDURE GetEmployeeProjects(
    IN emp_id INT
)
BEGIN
    SELECT ProjectName, Role 
    FROM Projects 
    WHERE EmployeeID = emp_id;
END;
//
DELIMITER ;