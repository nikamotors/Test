HA$PBExportHeader$w_remorder_ret.srw
forward
global type w_remorder_ret from window
end type
type st_1 from statictext within w_remorder_ret
end type
type dp_1 from datepicker within w_remorder_ret
end type
type dw_1 from datawindow within w_remorder_ret
end type
end forward

global type w_remorder_ret from window
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
st_1 st_1
dp_1 dp_1
dw_1 dw_1
end type
global w_remorder_ret w_remorder_ret

on w_remorder_ret.create
this.st_1=create st_1
this.dp_1=create dp_1
this.dw_1=create dw_1
this.Control[]={this.st_1,&
this.dp_1,&
this.dw_1}
end on

on w_remorder_ret.destroy
destroy(this.st_1)
destroy(this.dp_1)
destroy(this.dw_1)
end on

type st_1 from statictext within w_remorder_ret
integer x = 69
integer y = 120
integer width = 160
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "filter:"
boolean focusrectangle = false
end type

type dp_1 from datepicker within w_remorder_ret
integer x = 320
integer y = 120
integer width = 686
integer height = 80
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2017-10-17"), Time("11:48:23.000000"))
integer textsize = -10
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

type dw_1 from datawindow within w_remorder_ret
integer x = 69
integer y = 280
integer width = 2080
integer height = 640
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

