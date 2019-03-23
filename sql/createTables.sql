use [NHLStats]
GO

IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END

IF OBJECT_ID('game.goalie_stats', 'U') IS NOT NULL
DROP TABLE game.goalie_stats
GO

-- Create the table in the specified schema
CREATE TABLE game.goalie_stats (
    game_id                     INT NOT NULL,
    player_id                   INT NOT NULL PRIMARY KEY,
    team_id                     INT NOT NULL,
    timeOnIce                   INT NOT NULL,
    assists                     INT NOT NULL,
    goals                       INT NOT NULL,
    pim                         INT NOT NULL,
    shots                       INT NOT NULL,
    saves                       INT NOT NULL,
    powerPlaySaves              INT NOT NULL,
    shortHandedSaves            INT NOT NULL,
    evenSaves                   INT NOT NULL,
    shortHandedShots            INT NOT NULL,
    evenShotsAgainst            INT NOT NULL,
    powerPlayShotsAgainst       INT NOT NULL,
    decisions                   VARCHAR(1) NULL,
    savePercentage              FLOAT NULL,
    powerPlaySavePercentage     FLOAT NULL,
    evenStrengthSavePercentage  FLOAT NULL
    -- specify more columns here
);
GO

IF OBJECT_ID('game.plays_players', 'U') IS NOT NULL
DROP TABLE game.plays_players
GO

CREATE TABLE game.plays_players (
    play_id     VARCHAR(50) NOT NULL PRIMARY KEY,
    game_id     int NOT NULL,
    play_num    int NOT NULL,
    player_id   int NOT NULL,
    playerType  VARCHAR(50) NOT NULL
)

IF OBJECT_ID('game.plays', 'U') IS NOT NULL
DROP TABLE game.plays
GO

CREATE TABLE game.plays (
    play_id                 int NOT NULL PRIMARY KEY,
    game_id                 int NOT NULL,
    play_num                int NOT NULL,
    team_id_for             int NOT NULL,
    team_id_against         int NOT NULL,
    [event]                 VARCHAR(50) NOT NULL,
    secondaryType           VARCHAR(50) NOT NULL,
    x                       int NOT NULL,
    y                       int NOT NULL,
    [period]                int NOT NULL,
    period_type             VARCHAR(50) NOT NULL,
    period_time             int NOT NULL,
    periodTimeRemaining     int NOT NULL,
    [dateTime]              datetime NOT NULL,
    goals_away              int NOT NULL,
    goals_home              int NOT NULL,
    [description]           VARCHAR(256) NOT NULL,
    st_x                    int NOT NULL,
    st_y                    int NOT NULL,
    rink_side               VARCHAR(5) NOT NULL
)
