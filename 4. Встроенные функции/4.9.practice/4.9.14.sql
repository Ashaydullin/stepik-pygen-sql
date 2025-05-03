SELECT
    name,
    surname,
    STR_TO_DATE(birth_date, '%d %b %Y') AS birth_date,
    TIME_FORMAT(
        STR_TO_DATE(birth_time, 'Hours: %H, Minutes: %i'),
        '%H:%i:%S'
    ) AS birth_time
FROM
    Actors
WHERE
    SUBSTRING(birth_date, 4, 3) = 'Sep';