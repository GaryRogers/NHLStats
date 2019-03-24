IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.shifts', 'U') IS NOT NULL
DROP TABLE game.shifts;

CREATE TABLE game.shifts (
    game_id int,
    player_id int,
    [period] int,
    shift_start int,
    shift_end int
)