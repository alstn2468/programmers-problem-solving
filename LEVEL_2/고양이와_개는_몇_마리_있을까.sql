-- https://programmers.co.kr/learn/courses/30/lessons/59040
-- 고양이와 개는 몇 마리 있을까
-- 분류 : GROUP BY
-- 단계 : LEVEL 2
SELECT
    ANIMAL_TYPE,
    COUNT(*)
FROM ANIMAL_INS
GROUP BY
    ANIMAL_TYPE;