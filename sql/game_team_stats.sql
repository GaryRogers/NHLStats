IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.teams_stats', 'U') IS NOT NULL
DROP TABLE game.teams_stats;

CREATE TABLE game.teams_stats (
    game_id int,
    team_id int,
    HoA varchar(4),
    won VARCHAR(6),
    settled_in VARCHAR(3),
    head_coach VARCHAR(50),
    goals int,
    shots int,
    hits int,
    pim int,
    powerPlayOpportunities int,
    powerPlayGoals int,
    faceOffWinPercent VARCHAR(50),
    giveaways int,
    takeaways int
)