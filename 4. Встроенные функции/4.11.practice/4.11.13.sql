SELECT
    name,
    surname,
    CASE
        -- Проверяем сначала случаи больше 1 часа или ровно 1 час с минутами
        WHEN HOUR(time) >= 1
        AND MINUTE(time) > 0 THEN 0 -- Особый случай: ровно 1 час (60 минут) → 70 баллов
        WHEN HOUR(time) = 1
        AND MINUTE(time) = 0 THEN 70 -- Если меньше или равно 30 минут → 100 баллов
        WHEN MINUTE(time) <= 30 THEN 100 -- Остальные случаи (31-59 минут) → уменьшаем балл за каждую лишнюю минуту
        ELSE 100 - (MINUTE(time) - 30)
    END AS score
FROM
    Results
ORDER BY
    score DESC,
    name,
    surname;