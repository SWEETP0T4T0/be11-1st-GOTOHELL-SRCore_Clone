-- 부서등록
DELIMITER //
CREATE PROCEDURE 부서등록(in dp_name_input varchar(255))
begin
	INSERT INTO Departments (DepartmentName) VALUES (dp_name_input);
end;
//
DELIMITER ;

-- 부서수정
DELIMITER //
CREATE PROCEDURE 부서수정(in inid int, in dp_name_input varchar(255))
begin
    update Departments set DepartmentName=dp_name_input where DepartmentId=inid;
end;
//
DELIMITER ;


--  부서인원조회
DELIMITER //
CREATE PROCEDURE 부서인원조회(in inid int)
begin
    select e.DetailID 부서인원조회 from employees e
    inner join Departments d
    on e.DepartmentID = d.DepartmentID
    where d.DepartmentID = inid;
end;
//
DELIMITER ;

-- 직책등록
DELIMITER //
CREATE PROCEDURE 직책등록(in po_name_input varchar(255))
begin
	INSERT INTO positions (positionname) VALUES (po_name_input);
end;
//
DELIMITER ;

-- 직책수정
DELIMITER //
CREATE PROCEDURE 직책수정(in inid int, in po_name_input varchar(255))
begin
    update positions set positionName=po_name_input where positionId=inid;
end;
//
DELIMITER ;


-- 급여등록
DELIMITER //
CREATE PROCEDURE 급여등록(in em_id int, in pre_pay decimal(10,2), in cur_pay decimal(10,2), in pre_bo decimal(10,2))
begin
	INSERT INTO Payments (EmployeeID, PreviousSalary, CurrentSalary, Bonus)
VALUES (em_id, pre_pay ,cur_pay, pre_bo);
end;
//
DELIMITER ;

-- 급여수정
DELIMITER //
CREATE PROCEDURE 급여수정(in em_id int, in pre_pay decimal(10,2), in cur_pay decimal(10,2), in pre_bo decimal(10,2))
begin
    update payments set EmployeeID = em_id, PreviousSalary = pre_pay, CurrentSalary = cur_pay, Bonus = pre_bo where EmployeeId = em_id;
end;
//
DELIMITER ;

-- 급여조회
DELIMITER //
CREATE PROCEDURE 급여조회(in inid int)
begin
    select EmployeeID, PreviousSalary, CurrentSalary, bonus from payments
    where EmployeeID = inid;
end;
//
DELIMITER ;

-- 인사평가등록
DELIMITER //
CREATE PROCEDURE 인사평가등록(in em_id int, in ev_name varchar(255), in score int, in ev_reason varchar(255))
begin
	INSERT INTO scores (EmployeeID, EvaluationName, ScoreValue, EvaluationReason)
VALUES (em_id, ev_name , score, ev_reason);
end;
//
DELIMITER ;

-- 인사평가수정
DELIMITER //
CREATE PROCEDURE 인사평가수정(in em_id int, in ev_name varchar(255), in score int, in ev_reason varchar(255))
begin
    update scores set EvaluationName = ev_name,
    ScoreValue = score, EvaluationReason = ev_reason
    where EmployeeID = em_id;
end;
//
DELIMITER ;

-- 인사평가조회
DELIMITER //
CREATE PROCEDURE 인사평가조회(in em_id int)
begin
    select * from Scores
    where EmployeeID = em_id;
end;
//
DELIMITER ;