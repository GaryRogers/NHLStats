use nhlstats
GO

CREATE TABLE game_skater_stats (
    game_id int,
    player_id int,
    team_id int,
    timeOnIce int,
    assists int,
    goals int,
    shots int,
    hits int,
    powerPlayGoals int,
    powerPlayAssists int,
    penaltyMinutes int,
    faceOffWins int,
    faceoffTaken int,
    takeaways int,
    giveaways int,
    shortHandedGoals int,
    shortHandedAssists int,
    blocked int,
    plusMinus int,
    evenTimeOnIce int
)