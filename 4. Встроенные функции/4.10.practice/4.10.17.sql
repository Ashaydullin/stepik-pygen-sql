SELECT
    name,
    surname,
    country,
    LEAST(IF(country = 'USA', rating + 10, rating), 100) AS rating
FROM
    Directors
ORDER BY
    rating DESC,
    name;