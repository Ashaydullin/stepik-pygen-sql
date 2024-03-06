SELECT
    title,
    CONCAT(price * purchases) AS profit
FROM
    `Films`
ORDER BY
    purchases DESC
LIMIT
    3;