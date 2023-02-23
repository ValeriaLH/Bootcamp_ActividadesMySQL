SELECT * FROM world.cities;

-- 2. ¿Qué consulta ejecutarías para mostrar el número total de ciudades de cada país?  Tu consulta debe devolver
-- el nombre del país, el idioma y el número total de ciudades. Tu consulta debe ordenar el resultado por el número
-- de ciudades en orden descendente
SELECT countries.name AS nombre, COUNT(cities.name) AS ciudades FROM countries
LEFT JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name ORDER BY ciudades DESC;

-- 3. ¿Qué consulta ejecutarías para obtener todos ciudades de México con una población mayor a 500,000? Tu consulta
-- debe ordenar el resultado por población en orden descendente. 
SELECT  cities.name AS nombre, cities.population AS población, cities.country_id AS pais_id FROM cities
WHERE cities.population > 500000
AND cities.country_id = ( SELECT id FROM countries WHERE countries.name = "Mexico" )
ORDER BY population DESC;

-- 7. ¿Qué consulta ejecutarías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires
-- con una población mayor a 500,000 habitantes?  La consulta debe devolver el nombre del país, el nombre de la ciudad,
-- el distrito y la población.
SELECT countries.name AS pais, cities.name AS ciudad, cities.district AS distrito, cities.population AS población FROM countries
JOIN cities ON countries.id = cities.country_id WHERE cities.district = "Buenos Aires"
AND cities.population > 500000 ORDER BY cities.population DESC;
