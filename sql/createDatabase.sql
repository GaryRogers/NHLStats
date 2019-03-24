IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = 'NHLStats'
)
CREATE DATABASE [NHLStats]