-- 6 JOIN operation

-- 1.
SELECT matchid, player FROM goal 
  WHERE teamid = 'GER'

-- 2.
SELECT id,stadium,team1,team2
  FROM game
  WHERE id = 1012

-- 3.
SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (game.id= goal.matchid)
WHERE goal.teamid = 'GER'

-- 4.
SELECT game.team1, game.team2, goal.player FROM game
  JOIN goal ON goal.matchid = game.id
  WHERE player LIKE 'Mario%'

-- 5.
SELECT player, teamid, coach, gtime
  FROM goal 
  JOIN eteam ON goal.teamid = eteam.id
 WHERE gtime<=10

-- 6.
SELECT game.mdate, eteam.teamname FROM game
  JOIN eteam ON eteam.id = game.team1
  WHERE eteam.coach = 'Fernando Santos'

-- 7.
SELECT goal.player FROM goal
  JOIN game ON game.id = goal.matchid
  WHERE game.stadium = 'National Stadium, Warsaw'

-- 8.
SELECT DISTINCT goal.player
  FROM game JOIN goal ON goal.matchid = game.id
    WHERE (team1='GER' OR team2='GER')
    AND (goal.teamid != 'GER')

-- 9.
SELECT teamname, COUNT(eteam.id)
  FROM eteam JOIN goal ON id=teamid
GROUP BY teamname, eteam.id

-- 10.
SELECT stadium, COUNT(stadium) FROM game
  JOIN goal ON goal.matchid = game.id
GROUP BY stadium

-- 11.
SELECT matchid, mdate, COUNT(goal.matchid)
  FROM game JOIN goal ON goal.matchid = game.id 
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate, goal.matchid

-- 12.
SELECT matchid, mdate, COUNT(goal.matchid) FROM goal
  JOIN game ON game.id = goal.matchid
  WHERE goal.teamid = 'GER'
GROUP BY matchid, mdate, goal.matchid

-- 13.
SELECT mdate, team1, SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1, 
  team2, SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2 
  FROM game LEFT JOIN goal ON id = matchid GROUP BY mdate, id, team1, team2;
