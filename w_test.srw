HA$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type sle_1 from singlelineedit within w_test
end type
type st_1 from statictext within w_test
end type
type cb_3 from commandbutton within w_test
end type
type cb_2 from commandbutton within w_test
end type
type cb_1 from commandbutton within w_test
end type
end forward

global type w_test from window
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
sle_1 sle_1
st_1 st_1
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_test w_test

type variables
int i 
w_test win
end variables

on w_test.create
this.sle_1=create sle_1
this.st_1=create st_1
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.sle_1,&
this.st_1,&
this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_test.destroy
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type sle_1 from singlelineedit within w_test
integer x = 727
integer y = 204
integer width = 425
integer height = 88
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

event modified;this.text = String(Now(), "hh:mm:ss")

Timer(1)

end event

type st_1 from statictext within w_test
integer x = 645
integer y = 340
integer width = 571
integer height = 88
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "$$HEX3$$220430043a04$$ENDHEX$$"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_test
integer x = 736
integer y = 508
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "toggle"
end type

event clicked;if   st_1.text <> "$$HEX6$$1d043504200042043e042000$$ENDHEX$$" then 
st_1.text = "$$HEX6$$1d043504200042043e042000$$ENDHEX$$"
cb_1.text ="$$HEX5$$3d044304200034043004$$ENDHEX$$"
cb_1.X =100
cb_1.Y = 200
else 
	st_1.text = "$$HEX3$$220430043a04$$ENDHEX$$"
	cb_1.text ="$$HEX5$$3404300420003d043504$$ENDHEX$$"
	cb_1.X = 736 + i*15
cb_1.Y = 796 - i*5
end if 
i=i+1
sle_1.text =string(i) 

if  double(sle_1.text) > 20 then 
	
	sle_1.text ="Stop"
		
win = this.getparent()

close(win)
end if 


end event

type cb_2 from commandbutton within w_test
integer x = 731
integer y = 660
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type cb_1 from commandbutton within w_test
integer x = 736
integer y = 796
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Change here"
end type

