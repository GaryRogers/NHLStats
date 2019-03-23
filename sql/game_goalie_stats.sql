USE [nhlstats]
GO

CREATE TABLE game_goalie_stats (
    game_id int,
    player_id int,
    team_id int,
    timeOnIce int,
    assists int,
    goals int,
    pim int,
    shots int,
    saves int,
    powerPlaySaves int,
    shortHandedSaves int,
    evenSaves int,
    shortHandedShots int,
    evenShotsAgainst int,
    powerPlayShotsAgainst int,
    decisions VARCHAR(1),
    savePercentage decimal(3,2),
    powerPlaySavePercentage decimal(3,2),
    evenStrengthSavePercentage decimal(3,2)
)