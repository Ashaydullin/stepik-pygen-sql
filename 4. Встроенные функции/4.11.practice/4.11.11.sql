SELECT
    name,
    surname,
    CASE
        WHEN substring_index(email, '@', -1) = 'midtown.com'
        AND char_length(substring_index(email, '@', 1)) >= 2
        AND substring_index(email, '@', 1) BETWEEN 0
        AND 9 THEN 'Correct'
        ELSE 'Incorrect'
    END AS email_status
FROM
    Students
ORDER BY
    name;