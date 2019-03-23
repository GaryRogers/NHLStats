use nhlstats
go

CREATE TABLE team_info(
    team_id int,
    franchiseId int,
    shortName varchar(50),
    teamName varchar(50),
    abbreviation varchar(3),
    link varchar(256)
)