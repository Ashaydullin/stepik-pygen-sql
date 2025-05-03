SELECT
    name,
    surname,
    STATUS
FROM
    Clients
ORDER BY
    CASE
        WHEN STATUS = 'Gold' THEN 1
        WHEN STATUS = 'Silver' THEN 2
        WHEN STATUS = 'Bronze' THEN 3
        WHEN STATUS = 'Basic' THEN 4
    END,
    name;