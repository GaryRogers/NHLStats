IF (NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'game')) 
BEGIN
    EXEC ('CREATE SCHEMA [game] AUTHORIZATION [dbo]')
END;

IF OBJECT_ID('game.goalie_stats', 'U') IS NOT NULL
DROP TABLE game.goalie_stats

-- Create the table in the specified schema
CREATE TABLE game.goalie_stats (
    game_id                     INT NOT NULL,
    player_id                   INT NOT NULL,
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
    savePercentage              VARCHAR(50) NULL,
    powerPlaySavePercentage     VARCHAR(50) NULL,
    evenStrengthSavePercentage  VARCHAR(50) NULL
    -- specify more columns here
);