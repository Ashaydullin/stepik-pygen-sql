SELECT
    title,
    CONCAT(price * 0.7) AS discount_price
FROM
    `Films`
WHERE
    CONCAT(price * 0.7) < 4
ORDER BY
    discount_price;