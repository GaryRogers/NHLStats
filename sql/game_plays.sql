IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.plays', 'U') IS NOT NULL
DROP TABLE game.plays;

CREATE TABLE game.plays (
    play_id VARCHAR(50),
    game_id int,
    play_num int,
    team_id_for VARCHAR(5),
    team_id_against VARCHAR(5),
    [event] VARCHAR(50),
    secondaryType VARCHAR(50),
    x VARCHAR(50),
    y VARCHAR(50),
    [period] int,
    period_type VARCHAR(50),
    period_time int,
    periodTimeRemaining int,
    [dateTime] datetime,
    goals_away int,
    goals_home int,
    [description] VARCHAR(256),
    st_x VARCHAR(50),
    st_y VARCHAR(50),
    rink_side VARCHAR(5)
)