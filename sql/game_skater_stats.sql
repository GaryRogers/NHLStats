IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.skater_stats', 'U') IS NOT NULL
DROP TABLE game.skater_stats;

CREATE TABLE game.skater_stats (
    game_id int,
    player_id int,
    team_id int,
    timeOnIce int,
    assists int,
    goals int,
    shots int,
    hits int,
    powerPlayGoals int,
    powerPlayAssists int,
    penaltyMinutes int,
    faceOffWins int,
    faceoffTaken int,
    takeaways int,
    giveaways int,
    shortHandedGoals int,
    shortHandedAssists int,
    blocked int,
    plusMinus int,
    evenTimeOnIce int,
    shortHandedTimeOnIce int,
    powerPlayTimeOnIce int
)