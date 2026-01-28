SELECT name, init_date AS 'Fehca de inicio en programación' FROM users WHERE name = "Oskar"

SELECT name, init_date AS "Fehca de inicio en programación" FROM users WHERE name = "Oskar"

SELECT CONCAT('Nombre: ', name,  ' Apellidos: ', surname) FROM users

SELECT CONCAT('Nombre: ', name,  ' Apellidos: ', surname) AS 'Nombre completo' FROM users