$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_1 from commandbutton within w_main
end type
type dw_1 from datawindow within w_main
end type
end forward

global type w_main from window
integer width = 3959
integer height = 1648
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
dw_1 dw_1
end type
global w_main w_main

on w_main.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_main.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(SQLCA)
dw_1.retrieve()
end event

type cb_1 from commandbutton within w_main
integer x = 626
integer y = 1176
integer width = 457
integer height = 132
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;string ls
ls=appeongetcachedir()
messagebox("",ls)
end event

type dw_1 from datawindow within w_main
integer x = 41
integer y = 20
integer width = 3762
integer height = 1020
integer taborder = 10
string title = "none"
string dataobject = "d_contact"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

