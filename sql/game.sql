USE [nhlstats]
GO

CREATE TABLE game (
    game_id int,
    season int,
    type VARCHAR(1),
    date_time datetime,
    away_team_id int,
    home_team_id int,
    away_goals int,
    home_goals int,
    outcome VARCHAR(50),
    home_rink_side_start VARCHAR(5),
    venue VARCHAR(50),
    venue_link VARCHAR(256),
    venue_time_zone_id VARCHAR(256),
    venue_time_zone_offset int,
    venue_time_zone_tz VARCHAR(3)
)