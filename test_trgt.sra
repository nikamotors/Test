HA$PBExportHeader$test_trgt.sra
$PBExportComments$Generated Application Object
forward
global type test_trgt from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type test_trgt from application
string appname = "test_trgt"
boolean toolbartext = true
end type
global test_trgt test_trgt

on test_trgt.create
appname="test_trgt"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on test_trgt.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile Otradnoe
SQLCA.DBMS = "SNC SQL Native Client(OLE DB)"
SQLCA.ServerName = "otrdb"
SQLCA.AutoCommit = True
SQLCA.DBParm = "Database='otradnoe',TrustedConnection=1,Provider='SQLNCLI10',BindSPInput=1,TrustServerCertificate=1,ProviderString='DataTypeCompatibility = 0',StaticBind=0"

CONNECT USING sqlca;

IF SQLCA.sqlcode <0 THEN 
	
messagebox("Error" ,SQLCA.sqlerrtext)
 
 RETURN
END IF
	
open (w_test_toolbar)
end event

