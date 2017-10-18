HA$PBExportHeader$w_test_toolbar.srw
forward
global type w_test_toolbar from window
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
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
end type
global w_test_toolbar w_test_toolbar

on w_test_toolbar.create
if this.MenuName = "m_menu1" then this.MenuID = create m_menu1
end on

on w_test_toolbar.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

