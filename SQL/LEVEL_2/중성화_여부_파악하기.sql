-- https://programmers.co.kr/learn/courses/30/lessons/59409
-- 중성화 여부 파악하기
-- 분류 : String, Date
-- 단계 : LEVEL 2
SELECT
    ANIMAL_ID,
    NAME,
    CASE
        WHEN SEX_UPON_INTAKE LIKE "%Neutered%"
        OR SEX_UPON_INTAKE LIKE "%Spayed%" THEN "O"
        ELSE "X"
    END
FROM ANIMAL_INS;