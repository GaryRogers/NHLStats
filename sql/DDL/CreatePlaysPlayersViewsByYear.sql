DROP VIEW IF EXISTS game.plays_players_2012;
DROP VIEW IF EXISTS game.plays_players_2013;
DROP VIEW IF EXISTS game.plays_players_2014;
DROP VIEW IF EXISTS game.plays_players_2015;
DROP VIEW IF EXISTS game.plays_players_2016;
DROP VIEW IF EXISTS game.plays_players_2017;
GO

CREATE VIEW game.plays_players_2012 AS 
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20122013
GO
CREATE VIEW game.plays_players_2013 AS
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20132014
GO
CREATE VIEW game.plays_players_2014 AS
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20142015
GO
CREATE VIEW game.plays_players_2015 AS 
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20152016
GO
CREATE VIEW game.plays_players_2016 AS 
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20162017
GO
CREATE VIEW game.plays_players_2017 AS 
    SELECT A.* 
    FROM game.plays_players A JOIN game.game B ON A.game_id = B.game_id 
    WHERE B.season = 20172018
GO