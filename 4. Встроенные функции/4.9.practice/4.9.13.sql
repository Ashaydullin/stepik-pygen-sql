SELECT
    name,
    surname,
    DATE_FORMAT(
        ADDTIME(birth_date, birth_time),
        '%d %M %Y, %H:%i'
    ) AS birth_datetime
FROM
    Actors
WHERE
    DATE_FORMAT(birth_date, '%Y') BETWEEN 1969
    AND 1975;