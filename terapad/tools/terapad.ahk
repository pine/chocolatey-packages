SetTitleMatchMode, 2

WinWait, TeraPad ahk_class #32770

#IfWinExist TeraPad ahk_class #32770, TeraPad をインストールします
	ControlClick, 次へ(&N) >, TeraPad ahk_class #32770

#IfWinExist TeraPad ahk_class #32770, すべて読まないと、先へ進むことはできません
  ControlClick, 次へ(&N) >, TeraPad ahk_class #32770

#IfWinExist TeraPad ahk_class #32770, ファイルのコピー先フォルダを指定して下さい
  ControlClick, 次へ(&N) >, TeraPad ahk_class #32770

#IfWinExist TeraPad ahk_class #32770, フォルダが存在しないため
  ControlClick, はい(&Y), TeraPad ahk_class #32770

#IfWinExist TeraPad ahk_class #32770, 以下の指定でインストールを実行します
  ControlClick, 次へ(&N) >, TeraPad ahk_class #32770

WinWaitClose TeraPad ahk_class #32770, 300

WinWait, ahk_class TTeraPadMainForm
WinClose, ahk_class TTeraPadMainForm
WinWaitClose, ahk_class TTeraPadMainForm, 60
