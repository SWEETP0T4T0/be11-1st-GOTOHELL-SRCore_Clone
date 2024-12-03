1. 자격증
1.1) 관리자는 직원의 자격증 정보를 등록할 수 있다.
DELIMITER $$
CREATE PROCEDURE RegisterQualification (
    IN p_DetailID INT, 
    IN p_QualificationName VARCHAR(255), 
    IN p_IssueDate DATE, 
    IN p_ExpiryDate VARCHAR(255) 
)
BEGIN
    -- 'NULL' 문자열을 실제 NULL로 변환
    DECLARE v_ExpiryDate DATE;
    SET v_ExpiryDate = CASE 
        WHEN p_ExpiryDate = 'NULL' OR p_ExpiryDate = '' THEN NULL 
        ELSE STR_TO_DATE(p_ExpiryDate, '%Y-%m-%d')
    END;

    -- 중복 자격증 체크
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

    -- 자격증 추가
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

    -- 추가된 자격증 ID 반환
    SELECT LAST_INSERT_ID() AS NewQualificationID, 
           '자격증이 성공적으로 추가되었습니다.' AS ResultMessage;
END $$
DELIMITER ;


1.2) 관리자는 직원의 자격증 정보를 수정할 수 있다.
DELIMITER $$
CREATE PROCEDURE UpdateQualification (
    IN p_QualificationID INT,
    IN p_DetailID INT, 
    IN p_QualificationName VARCHAR(255), 
    IN p_IssueDate DATE, 
    IN p_ExpiryDate VARCHAR(255)
)
BEGIN
    -- 'NULL' 문자열을 실제 NULL로 변환
    DECLARE v_ExpiryDate DATE;
    SET v_ExpiryDate = CASE 
        WHEN p_ExpiryDate = 'NULL' OR p_ExpiryDate = '' THEN NULL 
        ELSE STR_TO_DATE(p_ExpiryDate, '%Y-%m-%d')
    END;

    -- 해당 QualificationID 존재 여부 확인
    IF NOT EXISTS (
        SELECT 1 
        FROM Qualifications 
        WHERE QualificationID = p_QualificationID
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '해당 자격증 정보를 찾을 수 없습니다.';
    END IF;

    -- 중복 자격증 체크 (동일 직원, 동일 자격증명, 동일 발급일)
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

    -- 자격증 정보 업데이트
    UPDATE Qualifications
    SET 
        DetailID = p_DetailID,
        QualificationName = p_QualificationName,
        IssueDate = p_IssueDate,
        ExpiryDate = v_ExpiryDate
    WHERE 
        QualificationID = p_QualificationID;

    -- 업데이트 결과 반환
    SELECT 
        p_QualificationID AS UpdatedQualificationID, 
        '자격증 정보가 성공적으로 수정되었습니다.' AS ResultMessage;
END $$
DELIMITER ;

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

2.렌트
2.1 관리자는 회사 자산을 특정 직원에게 대여할 수 있다.
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

2.2 관리자는 자산의 대여 상태를 변경할 수 있다.

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


2.3 직원은 자신이 대여한 자산 내역을 조회 할 수 있다.

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
