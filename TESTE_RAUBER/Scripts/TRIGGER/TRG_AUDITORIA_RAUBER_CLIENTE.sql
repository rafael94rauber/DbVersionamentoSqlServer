
        CREATE OR ALTER TRIGGER TRG_AUDITORIA_RAUBER_CLIENTE
        ON CLIENTE
        FOR INSERT, UPDATE, DELETE
        AS
        BEGIN
            DECLARE @Action NVARCHAR(20)

            IF EXISTS(SELECT 1 FROM inserted) AND EXISTS(SELECT 1 FROM deleted)
                SET @Action = 'UPDATE'
            ELSE IF EXISTS(SELECT 1 FROM inserted)
                SET @Action = 'INSERT'
            ELSE IF EXISTS(SELECT 1 FROM deleted)
                SET @Action = 'DELETE'

            INSERT INTO CLIENTE_AUDITORIA (ID, NOME, DATA_HORA, AuditAction, AuditDate, MachineName, UserName) 
                       SELECT ID, NOME, DATA_HORA, @Action, GETDATE(), HOST_NAME(), SYSTEM_USER  FROM inserted;
            IF @Action = 'DELETE'
            BEGIN
                INSERT INTO CLIENTE_AUDITORIA (ID, NOME, DATA_HORA, AuditAction, AuditDate, MachineName, UserName)
                SELECT ID, NOME, DATA_HORA, @Action, GETDATE(), HOST_NAME(), SYSTEM_USER 
                FROM deleted;
            END
        END