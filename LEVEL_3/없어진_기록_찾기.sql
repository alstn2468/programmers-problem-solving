-- https://programmers.co.kr/learn/courses/30/lessons/59042
-- 없어진 기록 찾기
-- 분류 : JOIN
-- 단계 : LEVEL 3
SELECT
    A.ANIMAL_ID,
    A.NAME
FROM ANIMAL_OUTS AS A
LEFT JOIN ANIMAL_INS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE
    B.ANIMAL_ID IS NULL