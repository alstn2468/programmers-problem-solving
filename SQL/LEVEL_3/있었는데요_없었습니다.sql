-- https://programmers.co.kr/learn/courses/30/lessons/59043
-- 있었는데요 없었습니다
-- 분류 : JOIN
-- 단계 : LEVEL 3
SELECT
    A.ANIMAL_ID,
    A.NAME
FROM ANIMAL_INS AS A
JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE
    A.DATETIME > B.DATETIME
ORDER BY
    A.DATETIME;