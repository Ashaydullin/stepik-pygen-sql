SELECT
    name,
    TIMEDIFF(rent_end, rent_start) AS rent_time,
    CONCAT(
        TIMESTAMPDIFF(HOUR, rent_start, rent_end) * 10,
        '€'
    ) AS rent_amount
FROM
    Rental
WHERE
    car_brand LIKE 'BMW'
ORDER BY
    rent_time,
    name;