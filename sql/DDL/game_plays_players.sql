IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.plays_players', 'U') IS NOT NULL
DROP TABLE game.plays_players;

CREATE TABLE game.plays_players (
    play_id     VARCHAR(50) NOT NULL,
    game_id     INT NOT NULL,
    play_num    INT NOT NULL,
    player_id   INT NOT NULL,
    playerType  VARCHAR(50) NOT NULL
);