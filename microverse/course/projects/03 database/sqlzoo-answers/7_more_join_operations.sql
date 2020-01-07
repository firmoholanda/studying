-- 7 More JOIN operations

-- 1.
SELECT id, title
 FROM movie
 WHERE yr=1962

-- 2.
SELECT yr FROM movie WHERE title = 'Citizen Kane'

-- 3.
SELECT id, title, yr FROM movie WHERE title LIKE '%Star Trek%'

-- 4.
SELECT id FROM actor WHERE name = 'Glenn Close'

-- 5.
SELECT id FROM movie WHERE title = 'Casablanca'

-- 6.
SELECT actor.name FROM casting JOIN actor ON casting.actorid = actor.id WHERE casting.movieid = 11768

-- 7.
SELECT actor.name FROM casting JOIN actor ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE movie.title = 'Alien'

-- 8.
SELECT movie.title FROM casting JOIN actor ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE actor.name = 'Harrison Ford'

-- 9.
SELECT movie.title FROM casting JOIN actor ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE actor.name = 'Harrison Ford' AND casting.ord != 1

-- 10.
SELECT movie.title, actor.name FROM casting JOIN actor ON actor.id = casting.actorid JOIN movie ON casting.movieid = movie.id
WHERE casting.ord = 1 AND casting.actorid = actor.id AND movie.yr = 1962

-- 11.
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

-- 12.
SELECT movie.title, actor.name FROM movie
 JOIN casting ON casting.movieid = movie.id
 JOIN actor ON actor.id = casting.actorid
WHERE movie.id IN 
  (SELECT movieid FROM casting
     WHERE actorid IN (
       SELECT id FROM actor
         WHERE name='Julie Andrews'))
AND casting.ord = 1

-- 13.
SELECT my_table.my_name FROM (SELECT actor.name as my_name, COUNT(casting.movieid) as star_count FROM casting
  JOIN actor ON casting.actorid = actor.id
  WHERE casting.ord = 1
GROUP BY casting.actorid) my_table
WHERE star_count >= 30
ORDER BY my_table.my_name

-- 14.
SELECT movie.title, COUNT(casting.actorid) as actor_count FROM movie
  JOIN casting ON casting.movieid = movie.id
  WHERE movie.yr = 1978
GROUP BY movie.id
ORDER BY actor_count DESC, movie.title

-- 15.
SELECT actor.name FROM actor
 JOIN casting ON casting.actorid = actor.id
WHERE casting.movieid IN (SELECT movie.id FROM movie JOIN casting ON casting.movieid = movie.id JOIN actor ON casting.actorid = actor.id WHERE actor.name = 'Art Garfunkel') AND actor.name != 'Art Garfunkel'
