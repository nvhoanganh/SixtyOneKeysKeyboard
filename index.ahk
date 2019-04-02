#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force
#MaxHotkeysPerInterval 500
#UseHook

#Include %A_LineFile%\..\init.ahk.
#Include %A_LineFile%\..\lib\index.ahk.
#include %A_LineFile%\..\lib\keyboard.ahk.
#Include %A_LineFile%\..\lib\tray.ahk.
