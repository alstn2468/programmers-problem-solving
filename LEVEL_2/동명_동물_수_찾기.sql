-- https://programmers.co.kr/learn/courses/30/lessons/59041
-- 동명 동물 수 찾기
-- 분류 : GROUP BY
-- 단계 : LEVEL 2
SELECT
    NAME,
    COUNT(NAME)
FROM ANIMAL_INS
GROUP BY
    NAME
HAVING
    COUNT(NAME) >= 2;