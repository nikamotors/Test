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

event open;open (w_test)
end event

