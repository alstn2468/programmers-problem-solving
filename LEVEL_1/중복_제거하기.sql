-- https://programmers.co.kr/learn/courses/30/lessons/59408
-- 중복 제거하기
-- 분류 : SUM, MAX, MIN
-- 단계 : LEVEL 1
SELECT
    COUNT(DISTINCT NAME)
FROM ANIMAL_INS
WHERE
    NAME IS NOT NULL;