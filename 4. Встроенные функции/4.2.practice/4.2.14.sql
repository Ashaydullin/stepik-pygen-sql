SELECT
    name,
    surname,
    REPLACE(card_number, '-', '') AS card_number
FROM
    Clients
WHERE
    surname LIKE 'S%'
ORDER BY
    surname;