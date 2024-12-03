# be11-1st-GOTOHELL-HRCore

<div align="center">
<img width="1280" alt="배너 이미지" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/banner.png">
</div>

  

# ✨ 팀

<figure>
    <table>
      <tr>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/95538973?v=4" width="180px"/></td>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/185882822?v=4" width="180px"/></td>
        <td align="center"><img src="https://avatars.githubusercontent.com/u/93423242?v=4" width="180px"/></td>
	<td align="center"><img src="https://avatars.githubusercontent.com/u/186559215?v=4" width="180px"/></td>
      </tr>
      <tr>
        <td align="center">팀장: <a href="https://github.com/JungJunHwan">정준환</a></td>
        <td align="center">팀원: <a href="https://github.com/SWEETP0T4T0">이태희</a></td>
        <td align="center">팀원: <a href="https://github.com/2ma1995" >소병윤</a></td>
	<td align="center">팀원: <a href="https://github.com/01youngil" >최영일</a></td>
      </tr>
    </table>
</figure>
<br>


---
    
# ✨프로젝트 배경

많은 중소기업에서 인사관리는 수작업 또는 엑셀과 같은 간단한 도구로 이루어지는 경우가 많습니다.

이로 인해 다음과 같은 문제점들이 발생합니다.

	- 직원 정보, 근태, 급여 관리가 체계적으로 이루어지지 않아 데이터가 분산되거나 누락
	- 근태 기록, 성과 평가, 교육 내역 등의 데이터가 통합되지 않아 효율적인 의사결정어려움
	- 부서별 현황이나 프로젝트별 자원 관리에 대한 데이터 부족으로 생산성 저하 발생

이러한 중소기업의 인사관리 문제를 해결하기 위해 체계적이고 통합된 **인사관리 시스템(HR Management System)**을 기획했습니다.

본 프로젝트는 중소기업이 손쉽게 사용할 수 있도록 간편하고 효율적인 솔루션을 제공하는 데 중점을 두고 있습니다.


---

# ✨프로젝트 개요

 중소기업의 인사관리 문제 해결을 위한 체계적인 시스템 개발


---
# ✨ 프로젝트 중점 사항

- 목적
	- 중소기업 인사관리 업무를 효율화하고 데이터 신뢰성을 확보하여 생산성과 직원 만족도를 높이는 것을 목표로 한다.

- 주요 목표

	- 데이터 통합 관리
 		- 직원 정보(프로필, 근태, 급여, 자격증 등)를 한 곳에서 체계적으로 관리할 수 있는 시스템 구축.

	- 업무 자동화
		- 근태 기록, 급여 계산, 인사 평가, 교육 내역 등 반복적인 업무를 자동화하여 관리 효율성을 증대.

	- 통계 및 인사이트 제공
 		- 근태, 급여, 보너스, 성과 데이터를 분석해 부서별/직원별 요약 리포트를 제공.

- 기대 효과 
	- 인사관리 업무 효율성 30% 이상 향상.
	- 급여 및 근태 관리의 신뢰성 확보로 인한 직원 만족도 상승.
	- 관리자가 데이터 분석 및 의사결정에 투자할 수 있는 시간 확보.


---
# 📄 WBS

![image](https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/WBS.png)

---
# 📄 요구사항 정의서

[요구사항 정의서 노션에서 보기](https://www.notion.so/14d7189b756480c8b8f0f0c3e39bc7a9?v=14d7189b7564818da3ea000c581f550f)

<div>
<img width="638" alt="notion1" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/notion1.png">
<img width="638" alt="notion2" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/notion2.png">
<img width="638" alt="notion3" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/notion3.png">
<img width="638" alt="notion4" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/notion4.png">

</div>


---
# 📄 ERD

 [ERD 클라우드에서 보기](https://www.erdcloud.com/d/J7u5N3hicwNBGPTwc)
 
![music-streaming-erd](https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/GOTOHELL_HRCORE.png)


---
# 📑 Schema
HRCore는 총 15개의 테이블로 구성되어 있습니다.
  
자세한 내용은 [여기](https://github.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/blob/main/SQL/DDL.sql)에서 보실 수 있습니다.


<details>
<summary><b>1. 직원상세정보</b></summary>
<div markdown="1">  
	
```sql
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
```
</div>
</details>


<details>
<summary><b>2. 부서</b></summary>
<div markdown="1">  

```sql
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255) NOT NULL
);
```
</div>
</details>


<details>
<summary><b>3.직급</b></summary>
<div markdown="1">    

```sql
CREATE TABLE Positions (
    PositionID INT PRIMARY KEY AUTO_INCREMENT,
    PositionName VARCHAR(255) NOT NULL
);
```
</div>
</details>


<details>
<summary><b>4. 직원</b></summary>
<div markdown="1">      

```sql
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
```
</div>
</details>


<details>
<summary><b>5. 자격증</b></summary>
<div markdown="1"> 
  
```sql
CREATE TABLE Qualifications (
    QualificationID INT PRIMARY KEY AUTO_INCREMENT,
    DetailID INT NOT NULL,
    QualificationName VARCHAR(255) NOT NULL,
    IssueDate DATE NOT NULL,
    ExpiryDate DATE,
    FOREIGN KEY (DetailID) REFERENCES EmployeeDetails(DetailID)
);
```
</div>
</details>



<details>
<summary><b>6. 파견이력</b></summary>
<div markdown="1">   

```sql
CREATE TABLE DispatchDetails (
    DispatchID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    DispatchStartDate DATE NOT NULL,
    DispatchEndDate DATE,
    DispatchRole VARCHAR(255) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
```
</div>
</details>


<details>
<summary><b>7. 근태기록</b></summary>
<div markdown="1">   

```sql
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    CheckIn DATETIME,
    CheckOut DATETIME,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
```
</div>
</details>


<details>
<summary><b>8. 직원 가족관계</b></summary>
<div markdown="1">   

```sql
CREATE TABLE Families (
    FamilyID INT PRIMARY KEY AUTO_INCREMENT,
    DetailID INT NOT NULL,
    Relationship VARCHAR(255) NOT NULL,
    FamilyMemberName VARCHAR(255) NOT NULL,
    BirthDate DATE NOT NULL,
    ContactNumber VARCHAR(15),
    FOREIGN KEY (DetailID) REFERENCES EmployeeDetails(DetailID)
);
```
</div>
</details>


<details>
<summary><b>9. 프로젝트 참여기록</b></summary>
<div markdown="1">   

```sql
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
```
</div>
</details>


<details>
<summary><b>10. 급여</b></summary>
<div markdown="1">   

```sql
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    PreviousSalary DECIMAL(10, 2) NOT NULL,
    CurrentSalary DECIMAL(10, 2) NOT NULL,
    Bonus DECIMAL(10, 2) DEFAULT 0,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
```
</div>
</details>


<details>
<summary><b>11. 인사평가</b></summary>
<div markdown="1">   

```sql
CREATE TABLE Scores (
    ScoreID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    EvaluationName VARCHAR(255) NOT NULL,
    ScoreValue INT NOT NULL,
    EvaluationReason VARCHAR(255) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
```
</div>
</details>


<details>
<summary><b>12. 휴가 및 연차</b></summary>
<div markdown="1">   

```sql
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
```
</div>
</details>


<details>
<summary><b>13. 대여장비</b></summary>
<div markdown="1">   

```sql
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
```
</div>
</details>


<details>
<summary><b>14. 직원교육이력</b></summary>
<div markdown="1">   

```sql
CREATE TABLE EmployeeEducation (
    EducationID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT NOT NULL,
    CourseName VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
```
</div>
</details>


<details>
<summary><b>15. 변경내역</b></summary>
<div markdown="1">   

```sql
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
```
</div>
</details>




  


---

# ✨ 프로시저

<details>
<summary><b>직원정보등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/직원정보등록_캡처.PNG">

```sql
DELIMITER //
create procedure 직원정보등록(in inNAME varchar(255), in inAGE int(11), in inADDRESS varchar(255), in inRESIDENT_NUMBER varchar(14), 
in inMARITALSTATUS enum('기혼', '미혼'), in inEDUCATION varchar(255), in inSALARY DECIMAL(10, 2), in inSTARTDATE datetime)
begin
    INSERT INTO EMPLOYEEDETAILS (NAME, AGE, ADDRESS, RESIDENTNUMBER, MARITALSTATUS, EDUCATION, SALARY, STARTDATE)
	VALUES(inNAME, inAGE, inADDRESS, inRESIDENT_NUMBER, inMARITALSTATUS, inEDUCATION, inSALARY, inSTARTDATE);
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>직원정보수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/직원정보수정_캡처.PNG">

```sql
DELIMITER //
create procedure 직원정보수정(in inid int(11), in inNAME varchar(255), in inAGE int(11), in inADDRESS varchar(255), in inRESIDENTNUMBER varchar(14), 
in inMARITALSTATUS enum('기혼', '미혼'), in inEDUCATION varchar(255), in inSALARY DECIMAL(10, 2), in inSTARTDATE datetime)
begin
    update employeedetails set NAME=inNAME, AGE=inAGE, ADDRESS=inADDRESS, RESIDENTNUMBER=inRESIDENTNUMBER
    , MARITALSTATUS=inMARITALSTATUS, EDUCATION=inEDUCATION, SALARY=inSALARY, STARTDATE=inSTARTDATE where detailid = inid;
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>직원정보삭제</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/직원정보삭제(1)_캡처.PNG">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/직원정보삭제(2)_캡처.PNG">

```sql
DELIMITER //
create procedure 직원정보삭제(in inid int(11))
begin
    delete from employeedetails where detailid=inid;
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>직원상세정보조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/직원상세정보조회_캡처.PNG">

```sql
DELIMITER //
create procedure 직원상세정보조회(in inid int(11))
begin
    select e.employeeid as '직원 ID', (select departmentname from departments where departmentid=e.departmentid) as '부서',
    (select positionname from positions where positionid=e.positionid) as '직급', e.employeetype as '고용형태', e.detailid as '사원번호', ed.*
    from employees e left join employeedetails ed on e.detailid=ed.detailid where ed.detailid=inid;
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>퇴사자정보등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/퇴사자정보등록.PNG">

```sql
DELIMITER //
create procedure 퇴사자정보등록(in inid int(11))
begin
    update employeedetails set currentstatus='N' where detailid = inid;
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>입퇴사자현황조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직원정보관리/입퇴사자현황조회_캡처.PNG">

```sql
DELIMITER //
create procedure 입퇴사자현황조회()
begin
    select currentstatus, count(*) as '입/퇴사자 현황' from employeedetails group by currentstatus;
end
// DELIMITER ;
```

</div>
</details>
<details>
<summary><b>부서등록</b></summary>
<div markdown="2">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서등록.png">


```sql
DELIMITER //
CREATE PROCEDURE 부서등록(in dp_name_input varchar(255))
begin
INSERT INTO Departments (DepartmentName) VALUES (dp_name_input);
end;
//
DELIMITER ;
```
</div>
</details>


<details>
<summary><b>부서수정</b></summary>
<div markdown="2">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서수정.png">

```sql
DELIMITER //
CREATE PROCEDURE 부서수정(in inid int, in dp_name_input varchar(255))
begin
    update Departments set DepartmentName=dp_name_input where DepartmentId=inid;
end;
//
DELIMITER ;
```
	
</div>
</details>


<details>
<summary><b>부서인원조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서인원조회.png">


```sql
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
```

</div>
</details>


<details>
<summary><b>직책등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직책관리/직책등록.png">

```sql
DELIMITER //
CREATE PROCEDURE 직책등록(in po_name_input varchar(255))
begin
	INSERT INTO positions (positionname) VALUES (po_name_input);
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>직책수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직책관리/직책수정.png">

```sql
DELIMITER //
CREATE PROCEDURE 직책수정(in inid int, in po_name_input varchar(255))
begin
    update positions set positionName=po_name_input where positionId=inid;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>근태기록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/근태관리/근태기록.PNG">

```sql
DELIMITER //
create procedure 근태기록(in inid int(11), in inCheckIn datetime, in inCheckOut datetime)
begin
    INSERT INTO Attendance (EmployeeID, CheckIn, CheckOut)
VALUES (inid, inCheckIn, inCheckOut);
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>근태조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/근태관리/근태조회.PNG">

```sql
DELIMITER //
create procedure 근태조회(in inid int(11), in instartdate datetime, in infinishdate datetime)
begin
    select e.employeeid, a.checkin, a.checkout from attendance a left join employees e on e.employeeid=a.employeeid
    where a.checkin >= instartdate and a.checkin <= infinishdate and e.employeeid=inid;
end
// DELIMITER ;
```

</div>
</details>

<details>
<summary><b>급여등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여등록.png">

```sql
DELIMITER //
CREATE PROCEDURE 급여등록(in em_id int, in pre_pay int, in cur_pay int, in pre_bo int)
begin
	INSERT INTO Payments (EmployeeID, PreviousSalary, CurrentSalary, Bonus)
VALUES (em_id, pre_pay ,cur_pay, pre_bo);
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>급여수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여수정.png">

```sql
DELIMITER //
CREATE PROCEDURE 급여수정(in em_id int, in pre_pay int, in cur_pay int, in pre_bo int)
begin
    update payments set EmpoyeeID = em_id, PreviousSalary = pre_pay, CurrentSalary = cur_pay, Bonus = pre_bo where 직원id = em_id;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>급여조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여조회.png">

```sql
DELIMITER //
CREATE PROCEDURE 급여조회(in inid int)
begin
    select EmployeeID, PreviousSalary, CurrentSalary, bonus from payments
    where EmployeeID = inid;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>보너스지급</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/보너스관리/보너스지급.PNG">
	
관리자는 직원에게 보너스를 지급할 수 있다.

```sql
DELIMITER //
CREATE PROCEDURE UpdateEmployeeBonus(IN em_id INT, IN new_bonus DECIMAL(10, 2))
BEGIN
    UPDATE Payments
    SET Bonus = new_bonus
    WHERE EmployeeID = em_id;
END;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>보너스 지급내역 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/보너스관리/보너스지급내역조회.PNG">


관리자는 보너스 지급 내역을 조회할 수 있다.

```sql
DELIMITER //
CREATE PROCEDURE GetBonusDetails(IN min_bonus DECIMAL(10, 2))
BEGIN
    SELECT EmployeeID, Bonus
    FROM Payments
    WHERE Bonus > min_bonus;
END;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>자격증 등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_등록_성공.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_등록_실패1_동일.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_등록_실패2_없는사원.png">

```sql

DELIMITER $$
CREATE PROCEDURE RegisterQualification (
    IN p_DetailID INT, 
    IN p_QualificationName VARCHAR(255), 
    IN p_IssueDate DATE, 
    IN p_ExpiryDate VARCHAR(255) 
)
BEGIN
    DECLARE v_ExpiryDate DATE;
    SET v_ExpiryDate = CASE 
        WHEN p_ExpiryDate = 'NULL' OR p_ExpiryDate = '' THEN NULL 
        ELSE STR_TO_DATE(p_ExpiryDate, '%Y-%m-%d')
    END;

    IF NOT EXISTS(
        SELECT 1
        FROM Employees
        WHERE EmployeeID = p_DetailID
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '해당 직원 정보를 찾을 수 없습니다.';
    END IF;

    IF EXISTS (
        SELECT 1 
        FROM Qualifications 
        WHERE DetailID = p_DetailID 
        AND QualificationName = p_QualificationName 
        AND IssueDate = p_IssueDate
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '동일한 자격증이 이미 존재합니다.';
    END IF;

    INSERT INTO Qualifications (
        DetailID, 
        QualificationName, 
        IssueDate, 
        ExpiryDate
    ) VALUES (
        p_DetailID, 
        p_QualificationName, 
        p_IssueDate, 
        v_ExpiryDate
    );

    SELECT LAST_INSERT_ID() AS NewQualificationID, 
           '자격증이 성공적으로 추가되었습니다.' AS ResultMessage;
END $$
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>자격증 수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_수정_성공.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_수정_실패1.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_수정_실패2.png">

```sql

DELIMITER $$
CREATE PROCEDURE UpdateQualification (
    IN p_QualificationID INT,
    IN p_DetailID INT, 
    IN p_QualificationName VARCHAR(255), 
    IN p_IssueDate DATE, 
    IN p_ExpiryDate VARCHAR(255)
)
BEGIN
    DECLARE v_ExpiryDate DATE;
    SET v_ExpiryDate = CASE 
        WHEN p_ExpiryDate = 'NULL' OR p_ExpiryDate = '' THEN NULL 
        ELSE STR_TO_DATE(p_ExpiryDate, '%Y-%m-%d')
    END;

    IF NOT EXISTS (
        SELECT 1 
        FROM Qualifications 
        WHERE QualificationID = p_QualificationID
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '해당 자격증 정보를 찾을 수 없습니다.';
    END IF;

    IF EXISTS (
        SELECT 1 
        FROM Qualifications 
        WHERE DetailID = p_DetailID 
        AND QualificationName = p_QualificationName 
        AND IssueDate = p_IssueDate
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '동일한 자격증이 이미 존재합니다.';
    END IF;

    UPDATE Qualifications
    SET 
        DetailID = p_DetailID,
        QualificationName = p_QualificationName,
        IssueDate = p_IssueDate,
        ExpiryDate = v_ExpiryDate
    WHERE 
        QualificationID = p_QualificationID;

    SELECT 
        p_QualificationID AS UpdatedQualificationID, 
        '자격증 정보가 성공적으로 수정되었습니다.' AS ResultMessage;
END $$
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>자격증 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_조회_성공_만료.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_조회_성공_영구.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_조회_성공_영구.png">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자격증관리/자격증_조회_실패1.png">

```sql
1.3) 직원은 자신의 자격증 정보를 조회할 수 있다.
DELIMITER $$
CREATE PROCEDURE GetEmployeeQualifications (
    IN p_DetailID INT
)
BEGIN
    IF NOT EXISTS (
        SELECT 1 
        FROM EmployeeDetails 
        WHERE DetailID = p_DetailID
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '해당 직원 정보를 찾을 수 없습니다.';
    END IF;

    SELECT 
        QualificationID,
        QualificationName,
        IssueDate,
        CASE 
            WHEN ExpiryDate IS NULL THEN '영구'
            WHEN ExpiryDate < CURRENT_DATE THEN '만료'
            ELSE '유효'
        END AS QualificationStatus,
        ExpiryDate
    FROM 
        Qualifications
    WHERE 
        DetailID = p_DetailID
    ORDER BY 
        IssueDate DESC;

END $$
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>프로젝트 등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/프로젝트관리/프로젝트등록.PNG">
	
관리자는 프로젝트를 등록할 수 있다.

```sql
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
```

</div>
</details>


<details>
<summary><b>프로젝트 수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/프로젝트관리/프로젝트수정.PNG">
	
관리자는 프로젝트 정보를 수정할 수 있다.

```sql
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
```

</div>
</details>


<details>
<summary><b>프로젝트 참여직원 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/프로젝트관리/프로젝트참여직원조회.PNG">
	
 관리자는 프로젝트에 참여 중인 직원 목록을 조회할 수 있다.
 
```sql
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
```

</div>
</details>


<details>
<summary><b>참여중인 프로젝트 목록조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/프로젝트관리/참여중인프로젝트목록조회.PNG">
	
직원은 자신이 참여 중인 프로젝트 목록을 조회할 수 있다.

```sql
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
```

</div>
</details>


<details>
<summary><b>인사평가등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가등록.png">


```sql
DELIMITER //
CREATE PROCEDURE 인사평가등록(in em_id int, in ev_name varchar(255), in score int, in ev_reason varchar(255))
begin
	INSERT INTO scores (EmployeeID, EvaluationName, ScoreValue, EvaluationReason)
VALUES (em_id, ev_name , score, ev_reason);
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>인사평가수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가수정.png">


```sql
DELIMITER //
CREATE PROCEDURE 인사평가수정(in em_id int, in ev_name varchar(255), in score int, in ev_reason varchar(255))
begin
    update scores set EvaluationName = ev_name,
    ScoreValue = score, EvaluationReason = ev_reason
    where EmployeeID = em_id;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>인사평가조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가조회.png">

```sql
DELIMITER //
CREATE PROCEDURE 인사평가조회(in em_id int)
begin
    select * from Scores
    where EmployeeID = em_id;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>휴가 신청내역 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/휴가관리/휴가신청내역조회.PNG">

```sql
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
```

</div>
</details>



<details>
<summary><b>휴가 신청</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/휴가관리/휴가신청.PNG">

```sql
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
```

</div>
</details>



<details>
<summary><b>휴가신청 승인/반려</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/휴가관리/휴가승인관리.PNG">

```sql
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
```

</div>
</details>



<details>
<summary><b>잔여휴가 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/휴가관리/잔여휴가조회.PNG">

```sql
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
```

</div>
</details>


<details>
<summary><b>교육과정등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/교육과정관리/교육과정등록.PNG">

```sql
DELIMITER //
create procedure 교육과정등록(in inemployeeid int(11), in inCoursename varchar(255), in instartdate date, in inenddate date)
begin
	insert into employeeeducation (employeeid, Coursename, startdate, enddate) 
    values(inemployeeid , inCoursename , instartdate, inenddate);
end
// DELIMITER ;
```

</div>
</details>


<details>
<summary><b>교육과정수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/교육과정관리/교육과정수정.PNG">

```sql
DELIMITER //
create procedure 교육과정수정(in inemployeeid int(11), in ineducationid int(11), in inCoursename varchar(255), 
in instartdate date, in inenddate date)
begin
	update employeeeducation set employeeid=inemployeeid, Coursename=inCoursename, 
    startdate=instartdate, enddate=inenddate
    where ineducationid=educationid;
end
// DELIMITER ;
```

</div>
</details>



<details>
<summary><b>교육과정조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/교육과정관리/교육과정조회.PNG">

```sql

DELIMITER //
create procedure 교육과정조회(in inemployeeid int(11))
begin
	select * from employeeeducation where inemployeeid=employeeid;
end
// DELIMITER ; 

```

</div>
</details>



<details>
<summary><b>자산 대여</b></summary>
<div markdown="1">
관리자는 회사 자산을 특정 직원에게 대여할 수 있다.
<br/>
성공사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_등록_성공.png">
</div>
실패사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_등록_실패1.png">
</div>

```sql

DELIMITER $$

CREATE PROCEDURE AddRent (
    IN p_EmployeeID INT,
    IN p_AssetName VARCHAR(255),
    IN p_Quantity INT,
    IN p_RentStartDate DATE,
    IN p_RentEndDate VARCHAR(255),
    IN p_AssetStatus ENUM('정상', '손상')
)
BEGIN
    DECLARE v_RentEndDate DATE;
    SET v_RentEndDate = CASE
		WHEN p_RentEndDate IS NULL or p_RentEndDate = '' THEN NULL
        ELSE STR_TO_DATE(p_RentEndDate, '%Y-%m-%d')
    END;
    IF NOT EXISTS (
        SELECT 1
        FROM Employees
        WHERE EmployeeID = p_EmployeeID
    ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = '해당 직원 정보를 찾을 수 없습니다';
    END IF;
    
    INSERT INTO Rents (EmployeeID, AssetName, Quantity, RentStartDate, RentEndDate, AssetStatus)
    VALUES (p_EmployeeID, p_AssetName, p_Quantity, p_RentStartDate, v_RentEndDate, p_AssetStatus);
    
    SELECT LAST_INSERT_ID() AS NewRent, '성공적으로 기록 되었습니다.' as RESULTMESSAGE;
END$$

DELIMITER ;
```

</div>
</details>



<details>
<summary><b>자산 대여 상태 변경</b></summary>
<div markdown="1">
관리자는 자산의 대여 상태를 변경할 수 있다.
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_수정_성공.png">
</div>
실패사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_수정_실패1.png"> 
</div>
실패사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_수정_실패2.png">
</div>

```sql


DELIMITER //

CREATE PROCEDURE UpdateRentStatus(
    IN p_RentID INT,
    IN p_employeeID INT,
    IN p_AssetName VARCHAR(255),
    IN p_Quantity INT,
    IN p_RentStartDate DATE,
    IN P_RentEndDate VARCHAR(255),
    IN p_AssetStatus ENUM('정상', '손상')
    
)
BEGIN
	DECLARE v_RentEndDate DATE;
    SET v_RentEndDate = CASE
		WHEN p_RentEndDate IS NULL OR p_RentEndDate = '' THEN NULL
        ELSE STR_TO_DATE(p_RentEndDate, '%Y-%m-%d')
	End;
    
    IF NOT EXISTS(
    SELECT 1
    FROM RENTS
    WHERE RentID=p_RentID)
    THEN SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = '해당 대여 정보를 찾을 수 없습니다.';
    END IF;
    
    IF EXISTS(
    SELECT 1
    FROM Rents
    WHERE EmployeeID=p_EmployeeID
    AND AssetName = p_AssetName
    AND Quantity = p_Quantity
    AND RentStartDate = p_RentStartDate
    AND RentEndDate = v_RentEndDate
    AND AssetStatus = p_AssetStatus)
    THEN 
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = '동일 기록이 이미 존재합니다.';
    END IF;
    
    UPDATE Rents
    SET EmployeeID=p_EmployeeID,
    AssetName = p_AssetName,
    Quantity = p_Quantity,
    RentStartDate = p_RentStartDate,
    RentEndDate = v_RentEndDate,
    AssetStatus = p_AssetStatus
    WHERE RentID = p_RentID;

    SELECT p_EmployeeID as EmployeeID, p_AssetName as AssetName, p_Quantity as Quantity, p_RentStartDate as RentStartDate,
           p_RentEndDate as RentEndDate, p_AssetStatus as AssetStatus, '성공적으로 수정 되었습니다' as ResultMessage
    
END;
//

DELIMITER ;
```

</div>
</details>



<details>
<summary><b>대여 자산 내역 조회</b></summary>
<div markdown="1">
직원은 자신이 대여한 자산 내역을 조회 할 수 있다.
<br/>성공사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_조회_성공_미납_반납완료.png">
</div>
실폐사례
<div>
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/자산관리/자산관리_조회_실패.png">
</div>

```sql


DELIMITER $$
CREATE PROCEDURE GETRents(
	IN p_EmployeeID INT
    )
BEGIN
	IF NOT EXISTS(
    SELECT 1
    FROM Rents
    WHERE EmployeeID = p_EmployeeID
    ) THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = '해당 직원 정보를 찾을 수 없습니다.';
END IF;

SELECT 
	EmployeeID,
    AssetName,
    Quantity,
    RentStartDate,
    AssetStatus,
    CASE
		WHEN RentEndDate IS NULL THEN '미납'
        ELSE '반납완료'
	END as RentStatus
    FROM Rents
    WHERE EmployeeID = p_EmployeeID
    ORDER BY RentID ASC;
END$$
DELIMITER ;
```

</div>
</details>



<details>
<summary><b>가족관계 등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/가족관계관리/가족관계등록.PNG">

```sql
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
```

</div>
</details>



<details>
<summary><b>가족관계 수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/가족관계관리/가족정보수정.PNG">

```sql
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
```

</div>
</details>



<details>
<summary><b>가족관계 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/가족관계관리/가족정보조회_성공.png">

```sql
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
```

</div>
</details>




<details>
<summary><b>자신의 가족관계 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/가족관계관리/특정직원 가족관계조회.png">

```sql
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
```

</div>
</details>



<details>
<summary><b>파견 이력 등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/파견이력관리/파견이력등록.PNG">

```sql

DELIMITER //
CREATE PROCEDURE 파견이력등록(in inemployeeid int(11), in inDispatchStartDate date, in inDispatchEndDate date,
 in inDispatchRole varchar(255), in inSalary decimal(10,2))
begin
	INSERT INTO DispatchDetails (EmployeeID, DispatchStartDate, DispatchEndDate,DispatchRole, Salary)
VALUES (inemployeeid, inDispatchStartDate, inDispatchEndDate, inDispatchRole, inSalary);
end;
//
DELIMITER ;
```

</div>
</details>



<details>
<summary><b>파견 이력 조회</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/파견이력관리/파견이력조회.PNG">

```sql
DELIMITER //
create procedure 파견이력조회(in inemployeeid int(11))
begin
	select * from DispatchDetails where inemployeeid=employeeid;
end
// DELIMITER ; 
```

</div>
</details>



<details>
<summary><b>파견 이력 수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/파견이력관리/파견이력수정.PNG">

```sql
DELIMITER //
create procedure 파견이력수정(in indispatchid int(11), in inemployeeid int(11), in inDispatchStartDate date, in inDispatchEndDate date,
 in inDispatchRole varchar(255), in inSalary decimal(10,2))
begin
	update DispatchDetails set employeeid=inemployeeid, DispatchStartDate=inDispatchStartDate, 
    DispatchEndDate=inDispatchEndDate, DispatchRole=inDispatchRole, Salary=inSalary
    where dispatchid=indispatchid;
end
// DELIMITER ;

```

</div>
</details>
