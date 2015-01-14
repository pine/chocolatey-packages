SetTitleMatchMode, 2

WinWait, Install, Maruo Editor, 60
Sleep, 100
ControlClick, Button1, Install, Maruo Editor

Loop {
    WinGetText, text, Maruo Editor Setup
    
    IfInString, text, complete, {
        Sleep, 100
        ControlClick OK, Maruo Editor Setup
        Break
    }
    
    IfWinExist Maruo Editor Setup, &Next, {
        ControlClick &Next, Maruo Editor Setup
    }
    
    Sleep, 0
}

WinWait, Maruo Editor, Start menu, 60
Sleep, 100
ControlClick, OK, Maruo Editor, Start menu

WinWaitClose, Maruo Editor, Start, 60