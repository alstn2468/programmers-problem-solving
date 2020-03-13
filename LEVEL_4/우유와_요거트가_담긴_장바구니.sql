-- https://programmers.co.kr/learn/courses/30/lessons/62284
-- 우유와 요거트가 담긴 장바구니
-- 분류 : 서머코딩/윈터코딩(2019)
-- 단계 : LEVEL 4
SELECT
  DISTINCT CART_ID
FROM CART_PRODUCTS
WHERE
  NAME = '요거트'
  AND CART_ID IN (
    SELECT
      CART_ID
    FROM CART_PRODUCTS
    WHERE
      NAME = '우유'
  )
ORDER BY
  CART_ID;