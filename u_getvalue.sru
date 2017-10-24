HA$PBExportHeader$u_getvalue.sru
forward
global type u_getvalue from userobject
end type
type cb_1 from commandbutton within u_getvalue
end type
end forward

global type u_getvalue from userobject
integer width = 1737
integer height = 800
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
end type
global u_getvalue u_getvalue

type variables
w_test_toolbar mywin



end variables

forward prototypes
public subroutine f_changeval (window win_param)
end prototypes

public subroutine f_changeval (window win_param);mywin = create w_test_toolbar

mywin = win_param


end subroutine

on u_getvalue.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on u_getvalue.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within u_getvalue
integer x = 23
integer y = 92
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "textToWin"
end type

event clicked;mywin.WindowState =maximized!
end event

