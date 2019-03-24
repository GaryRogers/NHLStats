BULK INSERT game.goalie_stats
FROM '/game_goalie_stats.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.plays_players
FROM '/game_plays_players.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.plays
FROM '/game_plays.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.shifts
FROM '/game_shifts.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.skater_stats
FROM '/game_skater_stats.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.teams_stats
FROM '/game_teams_stats.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.game
FROM '/game.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.player_info
FROM '/player_info.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BULK INSERT game.team_info
FROM '/team_info.csv'
WITH (
    FIRSTROW=2,
    FORMAT='CSV',
    FIELDQUOTE='"'
);

BACKUP DATABASE NHLStats
TO DISK = '/nhlStats.bak'  
WITH 
    FORMAT,
    COMPRESSION,
    MEDIANAME = 'NHLStats Backups',  
    NAME = 'Full Backup of NHLStats';