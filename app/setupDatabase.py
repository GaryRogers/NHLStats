#! /usr/bin/env python3

import pymssql
import nhlstats.utils


def runSqlFile(file):
    secrets = nhlstats.utils.getSecrets()

    conn = pymssql.connect(
        secrets['databases']['localSQL']['server'], 
        secrets['databases']['localSQL']['username'], 
        secrets['databases']['localSQL']['password'], 
        secrets['databases']['localSQL']['database']
    )

    cursor = conn.cursor()

    sqlStatement = ''

    with open(file, 'r') as sqlFile:
        sqlStatement = sqlFile.read()

    cursor.execute(sqlStatement)
    conn.commit()

#runSqlFile('/Users/grogers/Documents/Source/NHLStats/sql/createDatabase.sql')
runSqlFile('/Users/grogers/Documents/Source/NHLStats/sql/game_plays_players.sql')