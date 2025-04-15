SELECT
    CONCAT(UPPER(SUBSTRING(name, 1, 1)), SUBSTRING(name, 2)) AS name,
    CONCAT(
        UPPER(SUBSTRING(surname, 1, 1)),
        SUBSTRING(surname, 2)
    ) AS name
FROM
    Directors
WHERE
    name = LOWER(name)
    OR surname = LOWER(surname)
ORDER BY
    name,
    surname;