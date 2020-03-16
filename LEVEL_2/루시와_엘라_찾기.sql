-- https://programmers.co.kr/learn/courses/30/lessons/59046
-- 루시와 엘라 찾기
-- 분류 : String, Date
-- 단계 : LEVEL 2
SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE
    NAME IN (
        "Lucy",
        "Ella",
        "Pickle",
        "Rogan",
        "Sabrina",
        "Mitty"
    );