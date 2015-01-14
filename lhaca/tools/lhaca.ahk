SetTitleMatchMode, 2

WinWait, +Lhaca ahk_class #32770, , 30
Sleep, 100

ControlClick, Button2, +Lhaca ahk_class #32770
ControlSend, +Lhaca ahk_class #32770, {Enter}

WinWaitClose, +Lhaca ahk_class #32770, , 60