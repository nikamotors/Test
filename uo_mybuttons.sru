HA$PBExportHeader$uo_mybuttons.sru
forward
global type uo_mybuttons from userobject
end type
type cb_4 from commandbutton within uo_mybuttons
end type
type cb_3 from commandbutton within uo_mybuttons
end type
type cb_2 from commandbutton within uo_mybuttons
end type
type cb_1 from commandbutton within uo_mybuttons
end type
end forward

global type uo_mybuttons from userobject
integer width = 2395
integer height = 952
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global uo_mybuttons uo_mybuttons

on uo_mybuttons.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on uo_mybuttons.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_4 from commandbutton within uo_mybuttons
integer x = 1394
integer y = 40
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Retrieve"
end type

type cb_3 from commandbutton within uo_mybuttons
integer x = 937
integer y = 40
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Update"
end type

type cb_2 from commandbutton within uo_mybuttons
integer x = 480
integer y = 40
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancel"
end type

type cb_1 from commandbutton within uo_mybuttons
integer x = 46
integer y = 40
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Okay"
end type

