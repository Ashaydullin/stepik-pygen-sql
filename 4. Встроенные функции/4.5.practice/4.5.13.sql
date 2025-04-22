SELECT
    concat(angle, '°') AS 'x',
    FORMAT(SIN(RADIANS(angle)), 1) AS 'sin(x)',
    FORMAT(COS(RADIANS(angle)), 1) AS 'cos(x)'
FROM
    Angles
ORDER BY
    angle;