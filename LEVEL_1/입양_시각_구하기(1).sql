-- https://programmers.co.kr/learn/courses/30/lessons/59412
-- 입양 시각 구하기(1)
-- 분류 : GROUP BY
-- 단계 : LEVEL 1
SELECT
    HOUR(DATETIME),
    COUNT(*)
FROM ANIMAL_OUTS
WHERE
    DATE_FORMAT(DATETIME, '%H') > '08'
    AND DATE_FORMAT(DATETIME, "%H") < '20'
GROUP BY
    HOUR(DATETIME)