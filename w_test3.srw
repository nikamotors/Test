HA$PBExportHeader$w_test3.srw
forward
global type w_test3 from w_test2
end type
end forward

global type w_test3 from w_test2
end type
global w_test3 w_test3

on w_test3.create
call super::create
end on

on w_test3.destroy
call super::destroy
end on

type dp_1 from w_test2`dp_1 within w_test3
end type

type cb_again from w_test2`cb_again within w_test3
end type

type cb_2 from w_test2`cb_2 within w_test3
end type

type st_2 from w_test2`st_2 within w_test3
end type

type st_1 from w_test2`st_1 within w_test3
end type

type cb_1 from w_test2`cb_1 within w_test3
end type

type cb_3 from w_test2`cb_3 within w_test3
end type

