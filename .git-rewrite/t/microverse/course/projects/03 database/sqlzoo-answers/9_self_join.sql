-- 9 Self join

-- 1.
SELECT COUNT(*) FROM stops;

-- 2.
SELECT id FROM stops
  WHERE name = 'Craiglockhart';

-- 3.
SELECT id, name
  FROM stops
  WHERE id IN (SELECT stop
                 FROM route
                 WHERE num = '4'
                   AND company = 'LRT');

-- 4.
SELECT company, num, COUNT(*)
  FROM route 
  WHERE stop=149 OR stop=53
  GROUP BY company, num
  HAVING COUNT(*) > 1;

-- 5.
SELECT a.company, a.num, a.stop, b.stop
  FROM route a JOIN route b
  ON (a.company=b.company AND a.num=b.num)
  WHERE a.stop=53 
    AND b.stop=149;

-- 6.
SELECT a.company, a.num, stopa.name, stopb.name
  FROM route a JOIN route b
  ON (a.company=b.company AND a.num=b.num)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
  WHERE stopa.name='Craiglockhart'
    AND stopb.name='London Road';

-- 7.
SELECT DISTINCT a.company, a.num
  FROM route a JOIN route b
  ON (a.company=b.company AND a.num=b.num)
  WHERE a.stop=115 
    AND b.stop=137;

-- 8.
SELECT a.company, a.num
  FROM route a JOIN route b
  ON (a.company=b.company AND a.num=b.num)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
  WHERE stopa.name='Craiglockhart'
    AND stopb.name='Tollcross';

-- 9.
SELECT DISTINCT stopb.name, a.company, a.num
  FROM route a JOIN route b
  ON (a.company=b.company AND a.num=b.num)
    JOIN stops stopa ON (a.stop=stopa.id)
    JOIN stops stopb ON (b.stop=stopb.id)
  WHERE stopa.name='Craiglockhart';

-- 10.
SELECT first_ride.start_num, first_ride.start_company, first_ride.transfer_name, second_ride.end_num, second_ride.end_company
  FROM (SELECT DISTINCT a.num AS start_num, a.company AS start_company, stopb.name AS transfer_name
          FROM route a JOIN route b
          ON (a.company=b.company AND a.num=b.num)
            JOIN stops stopa ON (a.stop=stopa.id)
            JOIN stops stopb ON (b.stop=stopb.id)
          WHERE stopa.name='Craiglockhart') AS first_ride
  JOIN (SELECT DISTINCT stopc.name AS transfer_name,  d.num AS end_num, d.company AS end_company
          FROM route c JOIN route d
          ON (c.company=d.company AND c.num=d.num)
            JOIN stops stopc ON (c.stop=stopc.id)
            JOIN stops stopd ON (d.stop=stopd.id)
          WHERE stopd.name='Sighthill') AS second_ride
  ON first_ride.transfer_name=second_ride.transfer_name;
  