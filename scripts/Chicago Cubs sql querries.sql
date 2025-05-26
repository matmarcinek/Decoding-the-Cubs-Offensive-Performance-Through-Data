--Chicago Cubs

-- A list of all teams from Chicago
SELECT DISTINCT teamName, teamAbbrev
FROM hitting_mlb
WHERE teamName ILIKE '%Chicago%';


-- List of all the players who have ever played for Chicago Cubs
SELECT DISTINCT playerId, playerFullName
FROM hitting_mlb
WHERE teamAbbrev = 'CHC'
ORDER BY playerFullName;

-- Number of all players who have ever played for Chicago Cubs
SELECT Count(DISTINCT playerId)
FROM hitting_mlb
WHERE teamAbbrev = 'CHC'

--Cubs players with most homeruns in a single season
SELECT playerId, playerFullName, year, homeRuns
FROM hitting_mlb
WHERE teamAbbrev = 'CHC' AND homeRuns IS NOT NULL
ORDER BY homeRuns DESC
LIMIT 10;

--Cubs players with most homeruns in Cubs history
SELECT playerId, playerFullName, SUM(homeRuns) AS total_home_runs
FROM hitting_mlb
WHERE teamAbbrev = 'CHC' AND homeRuns IS NOT NULL
GROUP BY playerId, playerFullName
ORDER BY total_home_runs DESC
LIMIT 10;

--Players with most seasons as Cubs 
SELECT playerId, playerFullName, COUNT(DISTINCT year) AS seasons_with_cubs
FROM hitting_mlb
WHERE teamAbbrev = 'CHC'
GROUP BY playerId, playerFullName
ORDER BY seasons_with_cubs DESC
LIMIT 10;

--Team Statistics in a single season
SELECT year,
       COUNT(DISTINCT playerId) AS players,
       SUM(homeRuns) AS total_hr,
       AVG(avg) AS avg_avg,
       AVG(ops) AS avg_ops,
       SUM(plateAppearances) AS total_pa
FROM hitting_mlb
WHERE teamAbbrev = 'CHC'
GROUP BY year
ORDER BY year;




-- Players with most consecutive seasons in CHC
WITH cubs_seasons AS (
    SELECT playerId, playerFullName, year,
           ROW_NUMBER() OVER (PARTITION BY playerId ORDER BY year) AS rn
    FROM hitting_mlb
    WHERE teamAbbrev = 'CHC'
),
cubs_streaks AS (
    SELECT *,
           year - rn AS grp
    FROM cubs_seasons
),
grouped AS (
    SELECT playerId, playerFullName, MIN(year) AS start_year, MAX(year) AS end_year,
           COUNT(*) AS consecutive_seasons
    FROM cubs_streaks
    GROUP BY playerId, playerFullName, grp
)
SELECT *
FROM grouped
ORDER BY consecutive_seasons DESC
LIMIT 10;


--Players with most total bases grouped by seasons
WITH yearly_tb_leader AS (
    SELECT 
        playerId,
        playerFullName,
        year,
        totalBases,
        RANK() OVER (PARTITION BY year ORDER BY totalBases DESC) AS tb_rank
    FROM hitting_mlb
    WHERE teamAbbrev = 'CHC' AND totalBases IS NOT NULL
)
SELECT *
FROM yearly_tb_leader
WHERE tb_rank = 1
ORDER BY year DESC;








