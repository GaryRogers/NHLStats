USE [nhlstats]
GO

CREATE TABLE game_plays (
    play_id int,
    game_id int,
    play_num int,
    team_id_for int,
    team_id_against int,
    event VARCHAR(50),
    secondaryType VARCHAR(50),
    x int,
    y int,
    period int,
    period_type VARCHAR(50),
    period_time int,
    periodTimeRemaining int,
    dateTime datetime,
    goals_away int,
    goals_home int,
    description VARCHAR(256),
    st_x int,
    st_y int,
    rink_side VARCHAR(5)
)