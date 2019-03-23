# NHLData

## Overview

I'm not a stats guy. I'm a performance and buisness intelligence guy. And I'm getting to be a Python Guy. And I'm a Bruins fan. So.... why not see what I can do with the stats data you can get about the NHL?

Here's the start of things.

1) Pull down the NHL stats from [Kaggle](https://www.kaggle.com/martinellis/nhl-game-data). You'll need an account. It's painless though.
2) Get [Docker](https://www.docker.com/get-started). You'll need it to run SQL Server (yes, SQL Server)
3) Install [Python 3](https://www.python.org). We'll want to be able to play with the data with Python, and the shipped Python 2 isn't going to cut it.
4) Install [Visual Studio Code](https://code.visualstudio.com). Only the best code editor for us.
5) Install [DBViz](https://www.dbvis.com)
6) Dust off the (SQL Server in Docker)[https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-2017&pivots=cs1-bash] documentation
7) Pull down the SQL Server Docker Image `sudo docker pull mcr.microsoft.com/mssql/server:2017-latest`
8) Add Docker Extensions for Visual Studio Code
9) Run SQL Server in Docker `sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<YourStrong!Passw0rd>' \
   -p 1433:1433 --name sql1 \
   -d mcr.microsoft.com/mssql/server:2017-latest`
10) Start DBViz and add a connection (use master rather than Northwind database)
11) Create nhlstats database `CREATE DATABASE nhlstats`
12) Start writing DDL to create the tables we'll load the CSV data into