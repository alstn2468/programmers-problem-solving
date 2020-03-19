-- https://programmers.co.kr/learn/courses/30/lessons/59413
-- 입양 시각 구하기(2)
-- 분류 : GROUP BY
-- 단계 : LEVEL 4
SET
    @hour = -1;
SELECT
    @hour := @hour + 1 AS HOUR,
    (
        SELECT
            COUNT(DATETIME)
        FROM ANIMAL_OUTS B
        WHERE
            HOUR(DATETIME) = @hour
    ) AS COUNT
FROM ANIMAL_OUTS A
WHERE
    @hour < 23;