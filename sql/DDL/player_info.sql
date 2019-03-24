IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.player_info', 'U') IS NOT NULL
DROP TABLE game.player_info;

create table game.player_info (
    player_id int,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    nationality VARCHAR(3),
    birthCity VARCHAR(50),
    primaryPosition VARCHAR(3),
    birthDate varchar(10),
    link varchar(256)
)