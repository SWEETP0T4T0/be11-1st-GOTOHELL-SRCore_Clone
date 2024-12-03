-- 성과급지급


DELIMITER //
CREATE PROCEDURE UpdateEmployeeBonus(IN em_id INT, IN additional_bonus DECIMAL(10, 2))
BEGIN
    UPDATE Payments
    SET Bonus = COALESCE(Bonus, 0) + additional_bonus
    WHERE EmployeeID = em_id;
END;
//
DELIMITER ;

-- 보너스지급내역조회
DELIMITER //
CREATE PROCEDURE GetBonusDetailsWithSalariesByID(IN emp_id INT)
BEGIN
    SELECT 
        p.EmployeeID,
        ed.Name AS EmployeeName,
        COALESCE(p.Bonus, 0) AS CurrentBonus,
        COALESCE(SUM(pr.Salary), 0) AS ProjectSalary,
        COALESCE(SUM(dd.Salary), 0) AS DispatchSalary,
        COALESCE(p.Bonus, 0) + COALESCE(SUM(pr.Salary), 0) + COALESCE(SUM(dd.Salary), 0) AS TotalBonus
    FROM 
        Payments p
    LEFT JOIN 
        Employees e ON p.EmployeeID = e.EmployeeID
    LEFT JOIN 
        EmployeeDetails ed ON e.DetailID = ed.DetailID
    LEFT JOIN 
        Projects pr ON p.EmployeeID = pr.EmployeeID
    LEFT JOIN 
        DispatchDetails dd ON p.EmployeeID = dd.EmployeeID
    WHERE 
        p.EmployeeID = emp_id
    GROUP BY 
        p.EmployeeID, ed.Name, p.Bonus;
END;
//
DELIMITER ;


-----------------------------------------



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
CREATE PROCEDURE UpdateProjectDetails(
    IN project_id INT,
    IN employee_id INT,
    IN new_project_name VARCHAR(255),
    IN new_start_date DATE,
    IN new_end_date DATE,
    IN new_responsibility VARCHAR(255),
    IN new_role VARCHAR(255),
    IN new_salary DECIMAL(10, 2)
)
BEGIN
    UPDATE Projects
    SET 
        ProjectName = new_project_name,
        employeeid = employee_id,
        StartDate = new_start_date,
        EndDate = new_end_date,
        Responsibility = new_responsibility,
        Role = new_role,
        Salary = new_salary
    WHERE ProjectID = project_id;
END;
//
DELIMITER ;

-- 프로젝트참여직원조회
DELIMITER //
CREATE PROCEDURE GetProjectParticipants(
    IN project_name varchar(255)
)
BEGIN
    SELECT EmployeeID, Projectname, Role 
    FROM Projects 
    WHERE Projectname = project_name;
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

-----------------------------------------

-- 휴가관리 
-- 직원은 자신의 휴가 신청 내역을 조회할 수 있다.
DELIMITER //
CREATE PROCEDURE GetEmployeeHolidays(
    IN emp_id INT
)
BEGIN
    SELECT * 
    FROM Holidays 
    WHERE EmployeeID = emp_id;
END;
//
DELIMITER ;
--
Answer
CALL GetEmployeeHolidays(1);


--휴가관리 신청

DELIMITER //
CREATE PROCEDURE InsertHoliday(
    IN emp_id INT,
    IN holiday_type VARCHAR(255),
    IN start_date DATE,
    IN end_date DATE
)
BEGIN
	declare remain_hol int default (select remainingdays from holidays where employeeid=emp_id);
    INSERT INTO Holidays (EmployeeID, HolidayType, StartDate, EndDate, RemainingDays)
    VALUES (emp_id, holiday_type, start_date, end_date, remain_hol);
END;
//
DELIMITER ;
--
ANSWER
CALL InsertHoliday(1, '연차', '2023-12-25', '2023-12-26', 8, '승인');


-- 관리자는 직원의 휴가 신청을 승인 또는 반려할 수 있다.

DELIMITER //

CREATE PROCEDURE UpdateHolidayApproval(
    IN holiday_id INT,
    IN approval_status ENUM('승인', '대기')
)
BEGIN
    UPDATE Holidays
    SET ApprovalStatus = approval_status
    WHERE HolidayID = holiday_id;

IF approval_status = '승인' THEN
        UPDATE Employees e
        JOIN Holidays h ON e.EmployeeID = h.EmployeeID
        SET h.RemainingDays = h.RemainingDays - DATEDIFF(h.EndDate, h.StartDate) + 1
        WHERE h.HolidayID = holiday_id;
    END IF;
END;
//

DELIMITER ;

--
ANSWER
CALL UpdateHolidayApproval(1, '승인');

--

--관리자는 직원의 잔여 휴가 정보를 조회할 수 있다.

DELIMITER //
CREATE PROCEDURE GetRemainHolidays(
    IN emp_id INT
)
BEGIN
    SELECT EmployeeID, RemainingDays
    FROM Holidays
    WHERE EmployeeID = emp_id;
END;
//
DELIMITER ;

--

ANSWER
CALL GetRemainingHolidays(1);

-- 직원 가족관계
-- 1.가족 관계 등록 프로시저
DELIMITER //
CREATE PROCEDURE RegisterFamily(
    IN p_DetailID INT,
    IN p_Relationship VARCHAR(255),
    IN p_FamilyMemberName VARCHAR(255),
    IN p_BirthDate DATE,
    IN p_ContactNumber VARCHAR(15)
)
BEGIN
    INSERT INTO Families (DetailID, Relationship, FamilyMemberName, BirthDate, ContactNumber)
    VALUES (p_DetailID, p_Relationship, p_FamilyMemberName, p_BirthDate, p_ContactNumber);
END;
//
DELIMITER ;

answer
CALL RegisterFamily(1, '배우자', '김영희', '1990-05-20', '010-1234-5678');
CALL RegisterFamily(2, '자녀', '홍길순', '2015-06-10', '010-5678-1234');
CALL RegisterFamily(3, '부모님', '박철수', '1965-12-01', '010-4567-8901');

-- 2.가족 정보 수정 프로시저
-- 가족 정보 수정 프로시저 (생년월일 포함)
DELIMITER //
CREATE PROCEDURE UpdateFamily(
    IN p_FamilyID INT,
    IN p_FamilyMemberName VARCHAR(255),
    IN p_ContactNumber VARCHAR(15),
    IN p_BirthDate DATE
)
BEGIN
    UPDATE Families
    SET 
        FamilyMemberName = p_FamilyMemberName,
        ContactNumber = p_ContactNumber,
        BirthDate = p_BirthDate
    WHERE FamilyID = p_FamilyID;
END;
//
DELIMITER ;

answer
CALL UpdateFamily(1, '김영희', '010-9876-5432', '2015-06-10');


-- 3.특정 직원의 가족 관계 조회 프로시저
DELIMITER //
CREATE PROCEDURE GetEmployeeFamily(
    IN p_DetailID INT
)
BEGIN
    SELECT 
        FamilyID,
        DetailID,
        Relationship,
        FamilyMemberName,
        BirthDate,
        ContactNumber
    FROM Families 
    WHERE DetailID = p_DetailID;
END;
//
DELIMITER ;

answer
CALL GetEmployeeFamily(1);
CALL GetEmployeeFamily(2);


-- 4.직원 자신의 가족 정보 조회 프로시저

DELIMITER //
CREATE PROCEDURE GetOwnFamily(
    IN p_DetailID INT
)
BEGIN
    SELECT FamilyMemberName, Relationship, BirthDate
    FROM Families
    WHERE DetailID = p_DetailID;
END;
//
DELIMITER ;


answer
CALL GetOwnFamily(1);
CALL GetOwnFamily(3);
 