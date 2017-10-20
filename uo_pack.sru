HA$PBExportHeader$uo_pack.sru
forward
global type uo_pack from nonvisualobject
end type
end forward

global type uo_pack from nonvisualobject
end type
global uo_pack uo_pack

forward prototypes
public function integer adding (integer ai_one, integer ai_two)
public function integer subtract (integer ai_one, integer ai_two)
public function double multiple (integer ai_one, integer ai_two)
public function decimal divide (integer ai_one, integer ai_two)
end prototypes

public function integer adding (integer ai_one, integer ai_two);return ai_one + ai_two
end function

public function integer subtract (integer ai_one, integer ai_two);return ai_one - ai_two
end function

public function double multiple (integer ai_one, integer ai_two);return ai_one*ai_two
end function

public function decimal divide (integer ai_one, integer ai_two);return ai_one/ ai_two
end function

on uo_pack.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_pack.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

