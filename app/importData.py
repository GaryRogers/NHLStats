#! /usr/bin/env python3

import pymssql
import re
import nhlstats.utils


def importGoalieStats():
    secrets = nhlstats.utils.getSecrets()

    conn = pymssql.connect(
        secrets['databases']['localSQL']['server'], 
        secrets['databases']['localSQL']['username'], 
        secrets['databases']['localSQL']['password'], 
        secrets['databases']['localSQL']['database']
    )

    cursor = conn.cursor()

    truncate = "TRUNCATE TABLE game.goalie_stats"

    print('Trncating game.goalie_stats')
    cursor.execute(truncate)

    print('Importing game_goalie_stats')
    with open("../RawData/game_goalie_stats.csv", "r") as ins:
        x = 0
        for line in ins:
            result = [x.strip('"') for x in line.split(',')]
            insert = "INSERT INTO game.goalie_stats ( game_id,player_id,team_id,timeOnIce,assists,goals,pim,shots,saves,powerPlaySaves,shortHandedSaves,evenSaves,shortHandedShots,evenShotsAgainst,powerPlayShotsAgainst,decisions,savePercentage,powerPlaySavePercentage,evenStrengthSavePercentage ) VALUES ({0},{1},{2},{3},{4},{5},{6},{7},{8},{9},{10},{11},{12},{13},{14},'{15}',{16},{17},{18})".format(
                result[0],
                result[1],
                result[2],
                result[3],
                result[4],
                result[5],
                result[6],
                result[7],
                result[8],
                result[9],
                result[10],
                result[11],
                result[12],
                result[13],
                result[14],
                result[15],
                result[16].replace('NA', 'NULL'),
                result[17].replace('NA', 'NULL'),
                result[18].strip('\n').replace('NA', 'NULL')
            )

            try:
                if result[0].isnumeric():
                    cursor.execute(insert)
                    print('Inserted line {0}'.format(x))
                    x+=1
            except Exception as ex:
                print('This SQL call caused an error on file line {0}:'.format(x))
                print(insert)
                raise ex
        conn.commit()

def importPlaysPlayers():
    secrets = nhlstats.utils.getSecrets()

    conn = pymssql.connect(
        secrets['databases']['localSQL']['server'], 
        secrets['databases']['localSQL']['username'], 
        secrets['databases']['localSQL']['password'], 
        secrets['databases']['localSQL']['database']
    )

    cursor = conn.cursor()

    print('Truncating game.plays_players')

    truncate = "TRUNCATE TABLE game.goalie_stats"

    cursor.execute(truncate)

    print('Importing game_plays_players')

    with open("../RawData/game_plays_players.csv", "r") as ins:
        x = 0
        for line in ins:
            result = [x.strip('"') for x in line.split(',')]
            insert = "INSERT INTO game.plays_players ( play_id,game_id,play_num,player_id,playerType ) VALUES ('{0}',{1},{2},{3},'{4}')".format(
                result[0],
                result[1],
                result[2],
                result[3],
                result[4].strip('"\n')
            )

            try:
                if x >= 1:
                    cursor.execute(insert)
                    if re.search(r"000$", str(x)):
                        print('Inserted line {0}'.format(x))
                        conn.commit()

            except Exception as ex:
                print('This SQL call caused an error on file line {0}:'.format(x))
                print(insert)
                raise ex
            x+=1
        conn.commit()
    

#importGoalieStats()
importPlaysPlayers()