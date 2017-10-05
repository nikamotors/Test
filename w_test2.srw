HA$PBExportHeader$w_test2.srw
forward
global type w_test2 from w_test
end type
end forward

global type w_test2 from w_test
end type
global w_test2 w_test2

on w_test2.create
call super::create
end on

on w_test2.destroy
call super::destroy
end on

type cb_1 from w_test`cb_1 within w_test2
end type

type cb_3 from w_test`cb_3 within w_test2
end type

