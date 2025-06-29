SELECT * from sys.servers
SELECT m.ID,m.data from [NETWORK_SERVER].[DB_NAME].dbo.TABLE_NAME  m

--ADD LINKED SERVER
EXEC sp_addlinkedserver @server='WEB-DEV-AO1'
EXEC sp_addlinkedsrvlogin 'WEB-DEV-AO1', 'false', NULL, 'timetracksrv', 'timetracksrv#.,.12'

--REMOVE LINKED SERVER
EXEC sp_dropserver 'WEB-DEV-AO1', 'droplogins';

--GRANT PERMISSIONS
GRANT SELECT ON dbo.TABLE_NAME to timetracksrv;
GRANT INSERT ON dbo.TABLE_NAME to timetracksrv;