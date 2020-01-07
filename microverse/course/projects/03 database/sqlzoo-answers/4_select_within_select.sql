-- 4 SELECT within SELECT

-- 1.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- 2.
SELECT name
  FROM world
WHERE (gdp / population) > 
  (SELECT gdp / population FROM world WHERE name = 'United Kingdom') 
AND continent = 'Europe'

-- 3.
SELECT name, continent
  FROM world
WHERE continent IN
  ( SELECT DISTINCT continent FROM world WHERE name IN ('Argentina', 'Australia'))
ORDER BY name

-- 4.
SELECT name, population
  FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada')
AND population < (SELECT population FROM world WHERE name = 'Poland')

-- 5.
SELECT name, CONCAT(ROUND(100 *(population / (SELECT population FROM world WHERE name = 'Germany')), 0), '%')
  FROM world
  WHERE continent = 'Europe'

-- 6.
SELECT name FROM world a
  WHERE gdp > ALL
    ( SELECT gdp FROM world WHERE continent = 'Europe' and gdp IS NOT NULL )

-- 7.
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

-- 8.
SELECT continent, name
  FROM world a 
  WHERE name <= ALL
    ( SELECT name FROM world b where a.continent = b.continent)

-- 9.
SELECT name, continent, population 
  FROM world 
  WHERE continent NOT IN (SELECT DISTINCT continent FROM world WHERE population > 25000000)

-- 10.
SELECT name, continent FROM world a
  WHERE population >= ALL
   ( SELECT 3 * population FROM world b
       WHERE a.continent = b.continent
       AND a.name != b.name
    )