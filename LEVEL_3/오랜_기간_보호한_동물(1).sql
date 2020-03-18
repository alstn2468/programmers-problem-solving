-- https://programmers.co.kr/learn/courses/30/lessons/59044
-- 오랜 기간 보호한 동물(1)
-- 분류 : JOIN
-- 단계 : LEVEL 3
SELECT
    A.NAME,
    A.DATETIME
FROM ANIMAL_INS AS A
LEFT JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE
    B.ANIMAL_ID IS NULL
ORDER BY
    A.DATETIME
LIMIT
    3