DECLARE @CursorId as CURSOR;

    SET @CursorId = CURSOR FOR SELECT ID FROM TABLE_NAME WHERE ID=1

    OPEN @CursorId;
    FETCH NEXT FROM @CursorId INTO @insfreqId;
    WHILE @@FETCH_STATUS = 0
    BEGIN

	--FETCH QUERY USING CursorId
   
	FETCH NEXT FROM @CursorId INTO @insfreqId;
    END