DELIMITER //
create procedure 직원정보등록(in inNAME varchar(255), in inAGE int(11), in inADDRESS varchar(255), in inRESIDENT_NUMBER varchar(14), 
in inMARITALSTATUS enum('기혼', '미혼'), in inEDUCATION varchar(255), in inSALARY DECIMAL(10, 2), in inSTARTDATE datetime)
begin
    INSERT INTO EMPLOYEEDETAILS (NAME, AGE, ADDRESS, RESIDENTNUMBER, MARITALSTATUS, EDUCATION, SALARY, STARTDATE)
	VALUES(inNAME, inAGE, inADDRESS, inRESIDENT_NUMBER, inMARITALSTATUS, inEDUCATION, inSALARY, inSTARTDATE);
end
// DELIMITER ;

DELIMITER //
create procedure 직원정보수정(in inid int(11), in inNAME varchar(255), in inAGE int(11), in inADDRESS varchar(255), in inRESIDENTNUMBER varchar(14), 
in inMARITALSTATUS enum('기혼', '미혼'), in inEDUCATION varchar(255), in inSALARY DECIMAL(10, 2), in inSTARTDATE datetime)
begin
    update employeedetails set NAME=inNAME, AGE=inAGE, ADDRESS=inADDRESS, RESIDENTNUMBER=inRESIDENTNUMBER
    , MARITALSTATUS=inMARITALSTATUS, EDUCATION=inEDUCATION, SALARY=inSALARY, STARTDATE=inSTARTDATE where detailid = inid;
end
// DELIMITER ;


-- 직원 삭제 : 모든 테이블에서 제거
DELIMITER //
create procedure 직원정보삭제(in inid int(11))
begin
    declare inId int(11) default (select detailid from employees where employeeid=inId);

    delete from ChangeHistory where employeeid=inid;
    delete from Rents where employeeid=inid;
    delete from payments where employeeid=inid;
    delete from Rents where employeeid=inid;
    delete from Holidays where employeeid=inid;
    delete from scores where employeeid=inid;
    delete from attendance where employeeid=inid;
    delete from DispatchDetails where employeeid=inid;
    delete from employeeeducation where employeeid=inid;
    delete from Projects where employeeid=inid;

    delete from employees where employeeid=inid;

    delete from Qualifications where detailid = inId;
    delete from Families where detailid = inId;
    delete from employeedetails where detailid = inId;
end
// DELIMITER ;

DELIMITER //
create procedure 직원상세정보조회(in inid int(11))
begin
    select e.employeeid as '직원 ID', (select departmentname from departments where departmentid=e.departmentid) as '부서',
    (select positionname from positions where positionid=e.positionid) as '직급', e.employeetype as '고용형태', e.detailid as '사원번호', ed.*
    from employees e left join employeedetails ed on e.detailid=ed.detailid where ed.detailid=inid;
end
// DELIMITER ;

DELIMITER //
create procedure 퇴사자정보등록(in inid int(11))
begin
    update employeedetails set currentstatus='N' where detailid = inid;
end
// DELIMITER ;

DELIMITER //
create procedure 입퇴사자현황조회()
begin
    select currentstatus, count(*) as '입/퇴사자 현황' from employeedetails group by currentstatus;
end
// DELIMITER ;

DELIMITER //
create procedure 근태기록(in inid int(11), in inCheckIn datetime, in inCheckOut datetime)
begin
    INSERT INTO Attendance (EmployeeID, CheckIn, CheckOut)
VALUES (inid, inCheckIn, inCheckOut);
end
// DELIMITER ;

DELIMITER //
create procedure 근태조회(in inid int(11), in instartdate datetime, in infinishdate datetime)
begin
    select e.employeeid, a.checkin, a.checkout from attendance a left join employees e on e.employeeid=a.employeeid
    where a.checkin >= instartdate and a.checkin <= infinishdate and e.employeeid=inid order by a.checkin;
end
// DELIMITER ;

DELIMITER //
create procedure 교육과정등록(in inemployeeid int(11), in inCoursename varchar(255), in instartdate date, in inenddate date)
begin
	insert into employeeeducation (employeeid, Coursename, startdate, enddate) 
    values(inemployeeid , inCoursename , startdate, enddate);
end
// DELIMITER ;

DELIMITER //
create procedure 교육과정수정(in inemployeeid int(11), in ineducationid int(11), in inCoursename varchar(255), 
in instartdate date, in inenddate date)
begin
	update employeeeducation set employeeid=inemployeeid, Coursename=inCoursename, 
    startdate=instartdate, enddate=inenddate
    where ineducationid=educationid;
end
// DELIMITER ;

DELIMITER //
create procedure 교육과정조회(in inemployeeid int(11))
begin
	select * from employeeeducation where inemployeeid=employeeid;
end
// DELIMITER ; 