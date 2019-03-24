-- Forward Hiters Hits/60. Welcome to the Lady Byng
SELECT
    *,
    ( SELECT SUM(C.timeOnIce) FROM game.skater_stats C WHERE C.player_id = Z.player_id ) / 3660 AS [Total 60s],
    Z.Count / ( ( SELECT SUM(C.timeOnIce) FROM game.skater_stats C WHERE C.player_id = Z.player_id ) / 3660 ) AS [Hits Per 60]
FROM (
    SELECT
        A.player_id,
        B.lastName,
        B.firstName,
        B.primaryPosition,
        COUNT(*) AS [count]
    FROM
        game.plays_players A
        JOIN game.player_info B
        ON A.player_id = B.player_id
    WHERE
        A.playerType = 'Hitter'
        AND B.primaryPosition <> 'D'
    GROUP BY
        A.player_id,
        B.lastName,
        B.firstName,
        B.primaryPosition
) Z
WHERE
    ( SELECT SUM(C.timeOnIce) FROM game.skater_stats C WHERE C.player_id = Z.player_id ) / 60 > 400
ORDER BY 
    [Hits Per 60] ASC,
    [Total 60s] DESC