SetTitleMatchMode, 2

WinWait, インストールの確認, 秀丸エディタ, 60
Sleep, 100
ControlClick, Button1, インストールの確認, 秀丸エディタ

Loop {
    WinGetText, text, 秀丸エディタのセットアップ
    
    IfInString, text, インストールが完了しました, {
        Sleep, 100
        ControlClick OK, 秀丸エディタのセットアップ
        Break
    }
    
    IfWinExist 秀丸エディタのセットアップ, 次へ(&N), {
        ControlClick 次へ(&N), 秀丸エディタのセットアップ
    }
    
    Sleep, 0
}

WinWait, 秀丸エディタ, ショートカット, 60
Sleep, 100
ControlClick, OK, 秀丸エディタ, ショートカット

WinWaitClose, 秀丸エディタ, ショートカット, 60