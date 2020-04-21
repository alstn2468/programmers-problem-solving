-- https://programmers.co.kr/learn/courses/30/lessons/59410
-- NULL 처리하기
-- 분류 : IS NULL
-- 단계 : LEVEL 2
SELECT
    ANIMAL_TYPE,
    IFNULL(NAME, "No name"),
    SEX_UPON_INTAKE
FROM ANIMAL_INS;