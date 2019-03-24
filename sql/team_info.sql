IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.team_info', 'U') IS NOT NULL
DROP TABLE game.team_info;

CREATE TABLE game.team_info(
    team_id int,
    franchiseId int,
    shortName varchar(50),
    teamName varchar(50),
    abbreviation varchar(3),
    link varchar(256)
)