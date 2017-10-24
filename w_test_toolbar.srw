HA$PBExportHeader$w_test_toolbar.srw
forward
global type w_test_toolbar from window
end type
type mc_1 from monthcalendar within w_test_toolbar
end type
type uo_1 from u_getvalue within w_test_toolbar
end type
type cb_1 from commandbutton within w_test_toolbar
end type
type st_2 from statictext within w_test_toolbar
end type
type st_1 from statictext within w_test_toolbar
end type
type sle_3 from singlelineedit within w_test_toolbar
end type
type sle_2 from singlelineedit within w_test_toolbar
end type
type sle_1 from singlelineedit within w_test_toolbar
end type
end forward

global type w_test_toolbar from window
integer width = 3168
integer height = 1952
boolean titlebar = true
string title = "Untitled"
string menuname = "m_menu1"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 268435456
string icon = "AppIcon!"
boolean center = true
event ue_rclick pbm_rbuttondown
mc_1 mc_1
uo_1 uo_1
cb_1 cb_1
st_2 st_2
st_1 st_1
sle_3 sle_3
sle_2 sle_2
sle_1 sle_1
end type
global w_test_toolbar w_test_toolbar

type variables
w_test_toolbar mywin

 
end variables

forward prototypes
public subroutine f_setwin (window winparam)
end prototypes

event ue_rclick;m_desc m_pumenu

m_pumenu = create m_desc

m_pumenu.item[1].PopMenu(xpos,ypos)
end event

public subroutine f_setwin (window winparam);mywin = winparam

end subroutine

on w_test_toolbar.create
if this.MenuName = "m_menu1" then this.MenuID = create m_menu1
this.mc_1=create mc_1
this.uo_1=create uo_1
this.cb_1=create cb_1
this.st_2=create st_2
this.st_1=create st_1
this.sle_3=create sle_3
this.sle_2=create sle_2
this.sle_1=create sle_1
this.Control[]={this.mc_1,&
this.uo_1,&
this.cb_1,&
this.st_2,&
this.st_1,&
this.sle_3,&
this.sle_2,&
this.sle_1}
end on

on w_test_toolbar.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mc_1)
destroy(this.uo_1)
destroy(this.cb_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_3)
destroy(this.sle_2)
destroy(this.sle_1)
end on

event open;int i, li_objectcount

uo_1.f_changeval(this)



li_objectcount=upperbound(this.Control[])

for i = 1 to li_objectcount

if this.Control[i].typeOF() = StaticText! then 
	
	messagebox("",control[i].tag)
	
	end if 

next 

end event

type mc_1 from monthcalendar within w_test_toolbar
string tag = "cal"
integer x = 1934
integer y = 116
integer width = 827
integer height = 636
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long titletextcolor = 134217742
long trailingtextcolor = 134217745
long monthbackcolor = 1073741824
long titlebackcolor = 134217741
integer maxselectcount = 31
integer scrollrate = 1
boolean todaysection = true
boolean todaycircle = true
boolean border = true
borderstyle borderstyle = stylelowered!
end type

type uo_1 from u_getvalue within w_test_toolbar
integer x = 361
integer y = 904
integer taborder = 40
end type

on uo_1.destroy
call u_getvalue::destroy
end on

type cb_1 from commandbutton within w_test_toolbar
integer x = 466
integer y = 476
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "ok"
end type

type st_2 from statictext within w_test_toolbar
string tag = "lbl"
integer x = 87
integer y = 284
integer width = 389
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "two:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_test_toolbar
string tag = "lbl"
integer x = 110
integer y = 100
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "one:"
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_test_toolbar
integer x = 1029
integer y = 160
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
end type

type sle_2 from singlelineedit within w_test_toolbar
string tag = "txt"
integer x = 526
integer y = 240
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_test_toolbar
string tag = "txt1"
integer x = 526
integer y = 80
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

