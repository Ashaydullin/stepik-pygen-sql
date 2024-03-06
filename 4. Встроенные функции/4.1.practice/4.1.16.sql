SELECT
    name,
    surname
FROM
    `Directors`
WHERE
    name LIKE BINARY LOWER(`name`)
    OR surname LIKE BINARY LOWER(`surname`)
ORDER BY
    name;