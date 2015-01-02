SetTitleMatchMode, 2

WinWait, VB Runtime Installation ahk_class #32770, , 60

ControlClick, Button1, VB Runtime Installation ahk_class #32770

WinWait, VB Runtime Installation ahk_class #32770, successfully, 60
ControlClick, Button1, VB Runtime Installation ahk_class #32770

WinWaitClose, VB Runtime Installation ahk_class #32770, successfully, 60