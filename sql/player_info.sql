use nhlstats
go

create table player_info (
    player_id int,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    nationality VARCHAR(3),
    birthCity VARCHAR(50),
    primaryPosition VARCHAR(3),
    birthDate varchar(10),
    link varchar(256)
)