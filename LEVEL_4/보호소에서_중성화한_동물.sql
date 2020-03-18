-- https://programmers.co.kr/learn/courses/30/lessons/59045
-- 보호소에서 중성화한 동물
-- 분류 : JOIN
-- 단계 : LEVEL 4
SELECT
    A.ANIMAL_ID,
    A.ANIMAL_TYPE,
    A.NAME
FROM ANIMAL_INS AS A
JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE
    A.SEX_UPON_INTAKE LIKE "%Intact%"
    AND (
        B.SEX_UPON_OUTCOME LIKE "%Spayed%"
        OR B.SEX_UPON_OUTCOME LIKE "%Neutered%"
    )