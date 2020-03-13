-- https://programmers.co.kr/learn/courses/30/lessons/59404
-- 여러 기준으로 정렬하기
-- 분류 : SELECT
-- 단계 : LEVEL 1
SELECT
  ANIMAL_ID,
  NAME,
  DATETIME
FROM ANIMAL_INS
ORDER BY
  NAME,
  DATETIME DESC