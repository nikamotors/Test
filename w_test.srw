HA$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type dp_1 from datepicker within w_test
end type
type cb_again from commandbutton within w_test
end type
type cb_2 from commandbutton within w_test
end type
type st_2 from statictext within w_test
end type
type st_1 from statictext within w_test
end type
type cb_1 from commandbutton within w_test
end type
type cb_3 from commandbutton within w_test
end type
end forward

global type w_test from window
integer width = 4261
integer height = 2100
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_change pbm_mousemove
dp_1 dp_1
cb_again cb_again
cb_2 cb_2
st_2 st_2
st_1 st_1
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
int counter
end variables

forward prototypes
public subroutine uf_init ()
end prototypes

event ue_change;if (counter = 20 and  st_2.text <> "GAME OVER!") then 
	st_2.X = st_2.X -200
	st_2.Y +=50
	st_2.text ="GAME OVER!"
	ST_1.TEXT = ""
	cb_3.ENABLED = FALSE
	cb_Again.Enabled = True
elseif counter < 20 then
	st_2.text =string(20 - counter)
end if
end event

public subroutine uf_init ();st_1.text = "$$HEX20$$3e044104420430043b043e0441044c0420003f043504400435043c043504490435043d0438043904$$ENDHEX$$:"
nearClick = 0
cb_3.Enabled = true 
cb_3.X = 0
cb_3.Y = 0 
 st_2.X = 1495
 st_2.Y =	220
 st_2.text =""
 counter = 0
  cb_again.Enabled = false
end subroutine

on w_test.create
this.dp_1=create dp_1
this.cb_again=create cb_again
this.cb_2=create cb_2
this.st_2=create st_2
this.st_1=create st_1
this.cb_1=create cb_1
this.cb_3=create cb_3
this.Control[]={this.dp_1,&
this.cb_again,&
this.cb_2,&
this.st_2,&
this.st_1,&
this.cb_1,&
this.cb_3}
end on

on w_test.destroy
destroy(this.dp_1)
destroy(this.cb_again)
destroy(this.cb_2)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_1)
destroy(this.cb_3)
end on

event clicked;if abs(cb_3.X - xpos) < 20  then 
nearClick = 1  
	   messagebox("$$HEX6$$1f043e0439043c0430043b04$$ENDHEX$$","$$HEX3$$230440043004$$ENDHEX$$!") 
end if 
end event

type dp_1 from datepicker within w_test
integer x = 1920
integer y = 1200
integer width = 686
integer height = 100
integer taborder = 50
boolean border = true
borderstyle borderstyle = stylelowered!
boolean allowedit = true
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2017-10-12"), Time("14:31:56.000000"))
integer textsize = -10
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
long calendarbackcolor = 134217728
boolean todaysection = true
boolean todaycircle = true
end type

type cb_again from commandbutton within w_test
integer x = 1166
integer y = 680
integer width = 581
integer height = 108
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "$$HEX17$$1f043e043f0440043e0431043e043204300442044c04200041043d043e0432043004$$ENDHEX$$"
end type

event clicked;uf_init( )
end event

type cb_2 from commandbutton within w_test
integer x = 1125
integer y = 548
integer width = 663
integer height = 124
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "$$HEX19$$1a0443043f04380442044c04200031043e043b044c0448043504200045043e0434043e043204$$ENDHEX$$"
end type

type st_2 from statictext within w_test
event ue_change pbm_enchange
integer x = 1495
integer y = 220
integer width = 462
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
boolean focusrectangle = false
end type

type st_1 from statictext within w_test
integer x = 818
integer y = 220
integer width = 681
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = russiancharset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "$$HEX20$$3e044104420430043b043e0441044c0420003f043504400435043c043504490435043d0438043904$$ENDHEX$$:"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_test
integer x = 1006
integer y = 400
integer width = 1038
integer height = 120
integer taborder = 10
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
integer y = 8
integer width = 443
integer height = 112
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
	counter++
	
elseif this.X >= (wind.width - this.width) -100  AND this.Y <= 0 then
		do while this.Y < (wind.height - this.height) -200
				this.Y+=30
				sleep(0.45)
		loop
counter ++

elseif	 this.X > 0  AND this.Y > 0  then
		do while this.X > 0
				this.X = this.X - 30
				sleep(0.45)
		loop
counter++

	elseif	 this.X = 0 AND  this.Y > 0  then

		do while this.Y > 0
				this.Y = this.Y - 20
				sleep(0.45)
		loop
counter++

	end if 
	
end if 
end event

event clicked;messagebox("$$HEX3$$230440043004$$ENDHEX$$!", "$$HEX27$$12044b04200042043e043b044c043a043e042000470442043e042000320437043b043e043c0430043b04380420003004410443043f04$$ENDHEX$$...")
cb_again.Enabled = true
end event

