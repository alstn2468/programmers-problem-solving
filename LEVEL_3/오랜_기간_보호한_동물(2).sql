-- https://programmers.co.kr/learn/courses/30/lessons/59411
-- 오랜 기간 보호한 동물(2)
-- 분류 : String, Date
-- 단계 : LEVEL 3
SELECT
    B.ANIMAL_ID,
    B.NAME
FROM ANIMAL_INS AS A
RIGHT JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
ORDER BY
    DATEDIFF(B.DATETIME, A.DATETIME) DESC
LIMIT
    2