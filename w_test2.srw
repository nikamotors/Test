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
integer x = 896
integer y = 208
integer textsize = -18
integer weight = 700
fontcharset fontcharset = defaultcharset!
fontfamily fontfamily = anyfont!
string facename = "Tiranti Solid LET"
boolean italic = true
boolean flatstyle = true
end type

type cb_3 from w_test`cb_3 within w_test2
end type

