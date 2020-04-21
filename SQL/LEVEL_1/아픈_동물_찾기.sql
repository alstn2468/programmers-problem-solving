-- https://programmers.co.kr/learn/courses/30/lessons/59036
-- 아픈 동물 찾기
-- 분류 : SELECT
-- 단계 : LEVEL 1
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE
    INTAKE_CONDITION = "Sick";