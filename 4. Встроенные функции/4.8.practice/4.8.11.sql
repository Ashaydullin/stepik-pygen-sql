SELECT
    customer_name,
    TIMESTAMP(order_time, spent_on_delivery) AS delivery_datetime
FROM
    Orders
WHERE
    SUBSTRING_INDEX(order_time, ' ', 1) = '2023-10-24'
ORDER BY
    delivery_datetime DESC
LIMIT
    1;