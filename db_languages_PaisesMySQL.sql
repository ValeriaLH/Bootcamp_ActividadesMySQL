SELECT * FROM world.languages;

-- 1. ¿Qué consulta ejecutarías para obtener todos los países que hablan esloveno? Tu consulta debe devolver el nombre 
-- del país, el idioma y el porcentaje de habla del idioma. Tu consulta debe ordenar el resultado por porcentaje de habla
-- del idioma en orden descendente. 
SELECT countries.name AS nombre, languages.language AS lenguaje, languages.percentage AS porcentaje FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

-- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje de habla mayor a 89%? Tu 
-- consulta debe ordenar el resultado por porcentaje de habla en orden descendente. 
SELECT countries.name AS nombre, languages.language AS lenguaje, languages.percentage AS porcentaje FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89 ORDER BY languages.percentage DESC;