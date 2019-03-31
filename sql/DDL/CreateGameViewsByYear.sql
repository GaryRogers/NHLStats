DROP VIEW IF EXISTS game.game_2012;
DROP VIEW IF EXISTS game.game_2013;
DROP VIEW IF EXISTS game.game_2014;
DROP VIEW IF EXISTS game.game_2015;
DROP VIEW IF EXISTS game.game_2016;
DROP VIEW IF EXISTS game.game_2017;
GO

CREATE VIEW game.game_2012 AS SELECT A.* FROM game.game A WHERE A.season = 20122013;
GO
CREATE VIEW game.game_2013 AS SELECT A.* FROM game.game A WHERE A.season = 20132014;
GO
CREATE VIEW game.game_2014 AS SELECT A.* FROM game.game A WHERE A.season = 20142015;
GO
CREATE VIEW game.game_2015 AS SELECT A.* FROM game.game A WHERE A.season = 20152016;
GO
CREATE VIEW game.game_2016 AS SELECT A.* FROM game.game A WHERE A.season = 20162017;
GO
CREATE VIEW game.game_2017 AS SELECT A.* FROM game.game A WHERE A.season = 20172018;
GO