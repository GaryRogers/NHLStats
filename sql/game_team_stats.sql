use nhlstats
GO

CREATE TABLE game_teams_stats (
    game_id int,
    team_id int,
    HoA varchar(4),
    won bit,
    settled_in VARCHAR(3),
    head_coach VARCHAR(50),
    goals int,
    shots int,
    hits int,
    pim int,
    powerPlayOpportunities int,
    faceOffWinPercent decimal(3,2),
    giveaways int,
    takeaways int
)