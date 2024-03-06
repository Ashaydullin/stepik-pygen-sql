SELECT
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),
        SUBSTRING(name, 2)
    ) AS name,
    CONCAT(
        UPPER(SUBSTRING(surname, 1, 1)),
        SUBSTRING(surname, 2)
    ) AS surname
FROM
    Directors
WHERE
    name LIKE BINARY LOWER(name)
    OR surname LIKE BINARY LOWER(surname)
ORDER BY
    name;