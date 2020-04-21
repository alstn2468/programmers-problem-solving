-- https://programmers.co.kr/learn/courses/30/lessons/59047
-- 이름에 el이 들어가는 동물 찾기
-- 분류 : String, Date
-- 단계 : LEVEL 2
SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE
    NAME LIKE "%el%"
    AND ANIMAL_TYPE = 'Dog'
ORDER BY
    NAME;