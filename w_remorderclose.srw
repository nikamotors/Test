HA$PBExportHeader$w_remorderclose.srw
forward
global type w_remorderclose from window
end type
type cb_1 from commandbutton within w_remorderclose
end type
type dp_1 from datepicker within w_remorderclose
end type
type dw_1 from datawindow within w_remorderclose
end type
end forward

global type w_remorderclose from window
integer width = 3168
integer height = 1876
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dp_1 dp_1
dw_1 dw_1
end type
global w_remorderclose w_remorderclose

on w_remorderclose.create
this.cb_1=create cb_1
this.dp_1=create dp_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dp_1,&
this.dw_1}
end on

on w_remorderclose.destroy
destroy(this.cb_1)
destroy(this.dp_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_remorderclose
integer x = 2011
integer y = 200
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ok"
end type

type dp_1 from datepicker within w_remorderclose
integer x = 2011
integer y = 40
integer width = 686
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2017-10-17"), Time("10:23:11.000000"))
integer textsize = -10
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type dw_1 from datawindow within w_remorderclose
integer x = 23
integer y = 40
integer width = 1920
integer height = 1160
integer taborder = 10
string title = "none"
string dataobject = "d_remorder"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

