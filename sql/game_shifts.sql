USE nhlstats
GO

CREATE TABLE game_shifts (
    game_id int,
    player_id int,
    [period] int,
    shift_start int,
    shift_end int
)