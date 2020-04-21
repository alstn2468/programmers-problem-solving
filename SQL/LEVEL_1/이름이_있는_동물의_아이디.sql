-- https://programmers.co.kr/learn/courses/30/lessons/59407
-- 이름이 있는 동물의 아이디
-- 분류 : IS NULL
-- 단계 : LEVEL 1
SELECT
    ANIMAL_ID
FROM ANIMAL_INS
WHERE
    NAME IS NOT NULL;