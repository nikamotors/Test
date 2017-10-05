HA$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type cb_1 from commandbutton within w_test
end type
type cb_3 from commandbutton within w_test
end type
end forward

global type w_test from window
integer width = 3035
integer height = 1104
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
cb_3 cb_3
end type
global w_test w_test

type variables
int i 
int ii 
int ij
int nearClick
w_test win
end variables

on w_test.create
this.cb_1=create cb_1
this.cb_3=create cb_3
this.Control[]={this.cb_1,&
this.cb_3}
end on

on w_test.destroy
destroy(this.cb_1)
destroy(this.cb_3)
end on

event clicked;if abs(cb_3.X - xpos) < 20  then 
nearClick = 1  
		messagebox("$$HEX3$$230440043004$$ENDHEX$$!", "$$HEX27$$12044b04200042043e043b044c043a043e042000470442043e042000320437043b043e043c0430043b04380420003004410443043f04$$ENDHEX$$...")
end if 
end event

type cb_1 from commandbutton within w_test
integer x = 1029
integer y = 424
integer width = 800
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "$$HEX25$$1f04400435043a04400430044204380442044c0420004d0442043e0420003104350437043e04310440043004370438043504$$ENDHEX$$"
end type

event clicked;close(w_test)
end event

type cb_3 from commandbutton within w_test
event ue_test pbm_nchittest
integer width = 443
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "$$HEX13$$320437043b043e043c04300442044c0420003004410443043f04$$ENDHEX$$"
end type

event ue_test;w_test wind
wind = this.getparent()

if nearClick = 0 then 
	if  this.X < (wind.width - this.width - 100) AND this.Y <= 0   then 
		do while this.X < (wind.width - this.width) -100
				this.X+=30
				sleep(0.45)
		loop
	
elseif this.X >= (wind.width - this.width) -100  AND this.Y <= 0 then
		do while this.Y < (wind.height - this.height) -200
				this.Y+=30
				sleep(0.45)
		loop

elseif	 this.X > 0  AND this.Y > 0  then
		do while this.X > 0
				this.X = this.X - 30
				sleep(0.45)
		loop


	elseif	 this.X = 0 AND  this.Y > 0  then

		do while this.Y > 0
				this.Y = this.Y - 20
				sleep(0.45)
		loop

	end if 
	
end if 
end event

event clicked;messagebox("$$HEX6$$1f043e0439043c0430043b04$$ENDHEX$$","$$HEX3$$230440043004$$ENDHEX$$!")
end event

