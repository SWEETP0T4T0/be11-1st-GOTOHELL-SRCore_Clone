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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/근태관리/근태기록.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서등록.PNG">


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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서수정.PNG">


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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/부서관리/부서인원조회.PNG">


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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직책관리/직책등록.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/직책관리/근태조회.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/근태기록.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여등록.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여수정.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/급여관리/급여조회.PNG">

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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가등록.PNG">


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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가수정.PNG">


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
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/인사평가/인사평가조회.PNG">

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
<summary><b>교육과정등록</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/교육과정관리/교육과정등록.PNG">

```sql
DELIMITER //
CREATE PROCEDURE 교육과정등록(
    IN inemployeeid INT,
    IN inCoursename VARCHAR(255),
    IN instartdate DATE,
    IN inenddate DATE
)
BEGIN
    INSERT INTO employeeeducation (employeeid, Coursename, startdate, enddate)
    VALUES (inemployeeid, inCoursename, instartdate, inenddate);
END;
//
DELIMITER;

```

<details>
<summary><b>교육과정수정</b></summary>
<div markdown="1">
<img width="400" src="https://raw.githubusercontent.com/beyond-sw-camp/be11-1st-GOTOHELL-HRCore/main/img/교육과정관리/교육과정수정.PNG">

```sql

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
<summary><b>제목</b></summary>
<div markdown="1">

```sql

```

</div>
</details>



<details>
<summary><b>제목</b></summary>
<div markdown="1">

```sql

```

</div>
</details>



<details>
<summary><b>제목</b></summary>
<div markdown="1">

```sql

```

</div>
</details>



<details>
<summary><b>제목</b></summary>
<div markdown="1">

```sql

```

</div>
</details>



<details>
<summary><b>제목</b></summary>
<div markdown="1">

```sql

```

</div>
</details>

