USE nhlstats
GO

CREATE TABLE game_plays_players (
    play_id varchar(50),
    game_id int,
    play_num int,
    player_id int,
    playerType VARCHAR(50)
)