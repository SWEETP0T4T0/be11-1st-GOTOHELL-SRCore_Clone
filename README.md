# be11-1st-GOTOHELL-HRCore

<div align="center">
<img width="1280" alt="스크린샷 2024-06-02 오후 4 32 52" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/87ef7c0f-c871-4ede-85c7-9364c0fd3ab5">
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

![image](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/13d9cc44-a333-4c04-a601-53c6146c2c6b)

---
# 📄 요구사항 정의서

[요구사항 정의서 노션에서 보기](https://www.notion.so/14d7189b756480c8b8f0f0c3e39bc7a9?v=14d7189b7564818da3ea000c581f550f)

<div>
<img width="638" alt="스크린샷 2024-06-02 오후 4 22 25" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/e5b58297-6274-4f90-a507-31ed1f6e31f4">
<img width="642" alt="스크린샷 2024-06-02 오후 4 22 54" src="https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/d1af80ec-2473-4df1-9c5d-16dc5e0c5e87">
</div>


---
# 📄 ERD

 [ERD 클라우드에서 보기](https://www.erdcloud.com/d/J7u5N3hicwNBGPTwc)
 
![music-streaming-erd](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/assets/64718002/a72d3657-f8e8-47fb-aa14-17f096ff3152)


---
# 📑 Schema
Moosic은 총 15개의 테이블로 구성되어 있습니다.
  
자세한 내용은 [여기](https://github.com/beyond-sw-camp/be07_1st_1team_Moosic/blob/main/schema/team1_moosic_schema.sql)에서 보실 수 있습니다.


<details>
<summary><b>1. 직원상세정보</b></summary>
<div markdown="1">  
	
```sql
CREATE TABLE `EmployeeDetail` (
	`DetaiID`	int	NOT NULL primary key auto_increment,
	`name`	Varchar(255)	NOT NULL,
	`age`	int	NOT NULL,
	`Address`	varchar(255)	NOT NULL,
	`Resident_number`	varchar(13)	NOT NULL,
	`Marry`	Enum ('기혼', '미혼') NOT NULL,
	`Education`	varchar(255)	NOT NULL,
	`Payroll`	varchar(255)	NOT NULL,
	`Start_date`	datetime	NOT NULL,
	`NowStatus`	Enum ('Y', 'N') NOT NULL default 'Y' 
);
```
</div>
</details>


<details>
<summary><b>2. 부서</b></summary>
<div markdown="1">  

```sql
CREATE TABLE `Department` (
	`DepartmentId`	int	NOT NULL	primary key	auto_increment,
	`DepartmentName`	varchar(255)	NOT NULL,
	`DepartmentChange`	varchar(255)	NOT NULL	DEFAULT '없음'
);
```
</div>
</details>


<details>
<summary><b>3.직급</b></summary>
<div markdown="1">    

```sql
CREATE TABLE `Position` (
	`PositionID`	int	NOT NULL	primary key	auto_increment,
	`PositionName`	int	NOT NULL,
	`PositionChange`	varchar(255)	NOT NULL	DEFAULT '없음'
);
```
</div>
</details>


<details>
<summary><b>4. 직원</b></summary>
<div markdown="1">      

```sql
CREATE TABLE `Employee` (
	`EmployeeId`	int	NOT NULL primary key	auto_increment,
	`DetailID`	int	NOT NULL,
	`DepartmentID`	int	NOT NULL,
	`Position`	int	NOT NULL,
	`Name`	varchar(255)	NOT NULL,
	`Type`	varchar(255)	NOT NULL
);
```
</div>
</details>


<details>
<summary><b>5. 자격증</b></summary>
<div markdown="1"> 
  
```sql
CREATE TABLE `Qualification` (
	`QualificationsID`	int	NOT NULL primary key	auto_increment,
	`DetaiID`	int	NOT NULL,
	`QualificationsName`	varchar(255)	NOT NULL,
	`issu_date`	datetime	NOT NULL,
	`expire_date`	datetime	NULL
);
```
</div>
</details>



<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>


<details>
<summary><b>1. 제목</b></summary>
<div markdown="1">   

```sql

```
</div>
</details>




  


---

# ✨ 프로젝트 시나리오


  
---

# ✨ 프로시저

<details>
<summary><b>부서관리</b></summary>
<div markdown="1">




 
<details>
<summary><b>부서등록</b></summary>
<div markdown="1">

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
<div markdown="1">


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

</div>
</details>




<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql
DELIMITER //
CREATE PROCEDURE 부서삭제(in inid int)
begin
    delete from Departments where DepartmentId=inid;
end;
//
DELIMITER ;
```

</div>
</details>

<details>
<summary><b>부서인원조회</b></summary>
<div markdown="1">

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
<summary><b>직책삭제</b></summary>
<div markdown="1">

```sql
DELIMITER //
CREATE PROCEDURE 직책삭제(in inid int)
begin
    delete from positions where positionId=inid;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>급여등록</b></summary>
<div markdown="1">

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

