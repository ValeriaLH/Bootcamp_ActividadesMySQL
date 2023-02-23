SELECT * FROM world.countries;

-- 5. ¿Qué consulta ejecutarías para obtener todos los países con
-- un área de superficie menor a 501 y población mayor a 100,000?
SELECT countries.name AS nombre, countries.surface_area AS superficie, countries.population AS población from countries
WHERE surface_area < 501 AND population >100000;

-- ¿Qué consulta ejecutarías para obtener países solo con monarquía
-- constitucional, un capital superior a 200 y una esperanza de vida mayor a 75 años? 
SELECT countries.name AS nombre, countries.government_form AS forma_gobierno,capital, countries.life_expectancy AS expectativa_vida FROM countries
WHERE capital > 200 AND government_form ="Constitutional Monarchy" AND life_expectancy > 75;

-- 8. ¿Qué consulta ejecutarías para resumir el número de países en cada región? Tu consulta debe
-- mostrar el nombre de la región y el número de países. Además, debe ordenar el resultado por el número de
-- países en orden descendente. 
SELECT countries.region AS región, COUNT(countries.name) AS paises
FROM countries GROUP BY countries.region ORDER BY paises DESC;