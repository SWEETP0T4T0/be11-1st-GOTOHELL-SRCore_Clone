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
    IN end_date DATE,
    IN remaining_days INT,
    IN approval_status ENUM('승인', '대기')
)
BEGIN
    INSERT INTO Holidays (EmployeeID, HolidayType, StartDate, EndDate, RemainingDays, ApprovalStatus)
    VALUES (emp_id, holiday_type, start_date, end_date, remaining_days, approval_status);
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
