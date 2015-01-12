SetTitleMatchMode, 2

WinWait, TeraPad ahk_class #32770, , 60

WinWait, TeraPad ahk_class #32770, EXEpress CX 5 for free software Licensed Edition, 30
Sleep, 100
ControlClick, Button3, TeraPad ahk_class #32770

Loop {
    WinGetText, text, TeraPad ahk_class #32770
    
    IfInString, text, http://twitter.com/terapad, {
        Sleep, 100
        ControlClick, Button3, TeraPad ahk_class #32770
        Break
    }
    
    Sleep, 0
}

Loop {
    IfWinExist, TeraPad ahk_class #32770, Setup will install files, {
        Sleep, 100
        ControlClick, Button7, TeraPad ahk_class #32770
        Break
    }
    
    IfWinExist, TeraPad ahk_class #32770, ファイルのコピー先フォルダを指定して下さい, {
        Sleep, 100
        ControlClick, Button7, TeraPad ahk_class #32770
        Break
    }
    
    Sleep, 0
}

Loop {
    IfWinExist, TeraPad ahk_class #32770, Do you want it to be created, {
        Sleep, 100
        ControlClick, Button1, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, フォルダが存在しないため, {
        Sleep, 100
        ControlClick, Button1, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, Press [Next] to start installation., {
        Sleep, 100
        ControlClick, Button11, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, インストール元ファイル, {
        Sleep, 100
        ControlClick, Button11, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, Copying files, {
        Break
    }
    
    IfWinExist, TeraPad ahk_class #32770, ファイルをコピー中, {
        Break
    }
    
    Sleep, 0
}

WinWaitClose TeraPad ahk_class #32770, , 300

WinWait, ahk_class TTeraPadMainForm, , 30
WinClose, ahk_class TTeraPadMainForm
WinWaitClose, ahk_class TTeraPadMainForm, , 30
