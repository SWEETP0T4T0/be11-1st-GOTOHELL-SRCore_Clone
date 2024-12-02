1. 관리자는 직원의 자격증 정보를 등록할 수 있다.
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


2.관리자는 직원의 자격증 정보를 수정할 수 있다.
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
        AND QualificationID != p_QualificationID
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

3. 직원은 자신의 자격증 정보를 조회할 수 있다.
DELIMITER $$
CREATE PROCEDURE GetEmployeeQualifications (
    IN p_DetailID INT
)
BEGIN
    -- 해당 직원 존재 여부 확인
    IF NOT EXISTS (
        SELECT 1 
        FROM EmployeeDetails 
        WHERE DetailID = p_DetailID
    ) THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '해당 직원 정보를 찾을 수 없습니다.';
    END IF;

    -- 자격증 조회
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

    -- 총 자격증 개수 반환
    SELECT 
        COUNT(*) AS TotalQualifications
    FROM 
        Qualifications
    WHERE 
        DetailID = p_DetailID;
END $$
DELIMITER ;

