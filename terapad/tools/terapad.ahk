SetTitleMatchMode, 2

WinWait, TeraPad ahk_class #32770, , 60

WinWait, TeraPad ahk_class #32770, TeraPad をインストールします, 30
ControlClick, Button3, TeraPad ahk_class #32770

Loop {
    WinGetText, text, TeraPad ahk_class #32770
    
    IfInString, text, TeraPadについて, {
        ControlClick, Button3, TeraPad ahk_class #32770
        Break
    }
    
    Sleep, 0
}

Loop {
    IfWinExist, TeraPad ahk_class #32770, Setup will install files, {
        ControlClick, Button7, TeraPad ahk_class #32770
        Break
    }
    
    IfWinExist, TeraPad ahk_class #32770, ファイルのコピー先フォルダを指定して下さい, {
        ControlClick, Button7, TeraPad ahk_class #32770
        Break
    }
    
    Sleep, 0
}

Loop {
    IfWinExist, TeraPad ahk_class #32770, Do you want it to be created, {
        ControlClick, Button1, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, フォルダが存在しないため, {
        ControlClick, Button1, TeraPad ahk_class #32770
    }
    
    IfWinExist, TeraPad ahk_class #32770, Press [Next] to start installation., {
        ControlClick, Button11, TeraPad ahk_class #32770
        Break
    }
    
    IfWinExist, TeraPad ahk_class #32770, インストール元ファイル, {
        ControlClick, Button11, TeraPad ahk_class #32770
        Break
    }
    
    Sleep, 0
}

WinWaitClose TeraPad ahk_class #32770, , 300

WinWait, ahk_class TTeraPadMainForm, , 30
WinClose, ahk_class TTeraPadMainForm
WinWaitClose, ahk_class TTeraPadMainForm, , 30
