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
<summary><b>직원상세정보</b></summary>
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
  
### 2. 부서
```sql
CREATE TABLE `Department` (
	`DepartmentId`	int	NOT NULL	primary key	auto_increment,
	`DepartmentName`	varchar(255)	NOT NULL,
	`DepartmentChange`	varchar(255)	NOT NULL	DEFAULT '없음'
);
```

  
### 3. 직급
```sql
CREATE TABLE `Position` (
	`PositionID`	int	NOT NULL	primary key	auto_increment,
	`PositionName`	int	NOT NULL,
	`PositionChange`	varchar(255)	NOT NULL	DEFAULT '없음'
);
```

  
### 4. 직원
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

  
### 5. 
```sql
CREATE TABLE `Qualification` (
	`QualificationsID`	int	NOT NULL primary key	auto_increment,
	`DetaiID`	int	NOT NULL,
	`QualificationsName`	varchar(255)	NOT NULL,
	`issu_date`	datetime	NOT NULL,
	`expire_date`	datetime	NULL
);
```

  
### 6. 
```sql
CREATE TABLE `DIspatchDetail` (
	`파견이력ID`	int	NOT NULL primary key	auto_increment,
	`EmployeeId`	int	NOT NULL,
	`Name`	varchar(255)	NOT NULL,
	`StartDate`	datetime	NOT NULL,
	`EndDate`	datetime	NULL,
	`Payroll`	varchar(255)	NOT NULL,
	`Work`	varchar(255)	NOT NULL
);
```

  
### 7. 
```sql
CREATE TABLE `Attendence` (
	`AttendenceId`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`Check_in`	datetime	NULL,
	`Check_out`	datetime	NULL
);
```

  
### 8. 
```sql
CREATE TABLE `Project` (
	`ProjectId`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`ProjuctName`	varchar(255)	NOT NULL,
	`ProjectStart`	datetime	NOT NULL,
	`ProjuctEnd`	datetime	NOT NULL,
	`Responsibillity`	varchar(255)	NOT NULL,
	`Payroll`	varchar(255)	NOT NULL,
	`role`	varchar(255)	NOT NULL
);
```

  
### 9. 
```sql
CREATE TABLE `Payment` (
	`PaymentId`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`Previous_pay`	int	NOT NULL,
	`Thisyear_pay`	int	NOT NULL,
	`Previous_bonus`	int	NOT NULL	DEFAULT '0'
);
```

### 10. 
```sql
CREATE TABLE `Score` (
	`Key`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`Name`	varchar(255)	NOT NULL,
	`Score`	int	NOT NULL,
	`Reason`	varchar(255)	NOT NULL
);
```

  
### 11. 
```sql
CREATE TABLE `Holiday` (
	`HolidayId`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`DetailID`	int	NOT NULL,
	`Holiday_Type`	varchar(255)	NOT NULL,
	`Start_Date`	datetime	NOT NULL,
	`End_Date`	datetime	NOT NULL,
	`Remain_Holiday`	int	NOT NULL,
	`Aggrement`	Enum ('Y', 'M')	NOT NULL	
);
```

  
### 12. 
```sql
CREATE TABLE `Rent` (
	`AssetId`	int	NOT NULL primary key	auto_increment,
	`직원ID`	int	NOT NULL,
	`DepartmentID`	int	NOT NULL,
	`Name`	varchar(255)	NOT NULL,
	`Count`	int	NOT NULL	DEFAULT '1',
	`Rent_Start`	datetime	NOT NULL,
	`Rent_End`	datetime	NULL,
	`Status`	Enum ('정상', '손상') NOT NULL
);
```

  
### 13. 
```sql
CREATE TABLE `EmployeeEdu` (
	`EduID`	int	NOT NULL primary key	auto_increment,
	`EmployeeId`	int	NOT NULL,
	`EduName`	varchar(255)	NOT NULL,
	`EduStart`	datetime	NOT NULL,
	`EduEnd`	datetime	NOT NULL
);
```
  

### 14. 
```sql

```

### 15. 
```sql

```

---

# ✨ 프로젝트 시나리오


  
---

# ✨ 프로시저


<details>
<summary><b>부서등록</b></summary>
<div markdown="1">

```sql
DELIMITER //
CREATE PROCEDURE 부서등록(in dp_name_input varchar(255))
begin
	INSERT INTO department (DepartmentName) VALUES (dp_name_input);
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
    update department set DepartmentName=dp_name_input where DepartmentId=inid;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql
DELIMITER //
CREATE PROCEDURE 부서삭제(in inid int)
begin
    delete from department where DepartmentId=inid;
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
    select e.detailid 부서인원조회 from employee e
    inner join department d
    on e.departmentid = d.departmentid
    where d.departmentid = inid;
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
	INSERT INTO position (positionname) VALUES (po_name_input);
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
    update position set positionName=po_name_input where positionId=inid;
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
    delete from position where positionId=inid;
end;
//
DELIMITER ;
```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql

```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql

```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql

```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql

```

</div>
</details>


<details>
<summary><b>부서삭제</b></summary>
<div markdown="1">

```sql

```

</div>
</details>


