-- 3 SELECT from Nobel

-- 1.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

-- 2.
SELECT winner
FROM nobel
WHERE yr = 1962
  AND subject = 'Literature'

-- 3.
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

-- 4.
SELECT winner
FROM nobel
WHERE yr >= 2000 AND subject = 'Peace'

-- 5.
SELECT yr, subject, winner
FROM nobel
WHERE yr >= 1980 and yr <= 1989 and subject = 'Literature'

-- 6.
SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama'
                 )

-- 7.
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

-- 8.
SELECT yr, subject, winner
FROM nobel
WHERE (yr = 1980 AND subject = 'Physics')
  OR (yr = 1984 AND subject = 'Chemistry')

-- 9.
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1980 AND NOT (subject IN ('Medicine', 'Chemistry'))

-- 10.
SELECT yr, subject, winner
FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910)
  OR (subject = 'Literature' AND yr >= 2004)

-- 11.
SELECT *
FROM nobel
WHERE winner = CONCAT('Peter Gr', CHAR(252), 'nberg')

-- 12.
SELECT *
FROM nobel
WHERE winner = "Eugene O'Neill"

-- 13.
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'
ORDER BY yr DESC, winner

-- 14.
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY
  CASE WHEN subject NOT IN ('Physics', 'Chemistry') THEN 0 ELSE  1 END, subject, winner
