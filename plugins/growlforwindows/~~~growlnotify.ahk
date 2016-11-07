﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

param_appicon = ""
param_name = ""
param_title = ""
param_msg = ""
param_prioity = ""
param_sticky = ""

Loop, %0% 
{
  param := %A_Index%
  If (param = "--appIcon")
  {
    param_appicon := A_Index + 1
    param_appicon := %param_appicon%
  }
  Else If (param = "--name")
  {
    param_name := A_Index + 1
    param_name := %param_name%
  }
  Else If (param = "--title")
  {
    param_title := A_Index + 1
    param_title := %param_title%
  }
  Else If (param = "--message")
  {
    param_msg := A_Index + 1
    param_msg := %param_msg%
  }
  Else If (param = "--priority")
  {
    param_prioity := A_Index + 1
    param_prioity := %param_prioity%
  }
  Else If (param = "--sticky")
  {
    param_sticky := A_Index + 1
    param_sticky := %param_sticky%
  }
}



growlnotify = F:\Daniel\.spacemacs.d\plugins\growlforwindows\growlnotify.exe
If (param_appicon = "emacs")
{
  appIcon = D:\emacs\share\emacs\25.0.90\etc\images\icons\hicolor\32x32\apps\emacs.png
  run, %growlnotify% /t:"%param_title%" /ai:"%appIcon%" /s:true "%param_msg%"
}
else
{
  run, %growlnotify% /t:"%param_title%" /s:true "%param_msg%"
}

