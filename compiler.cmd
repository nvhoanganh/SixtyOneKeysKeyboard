REM use ctrl+win+alt + c to exit the script
rm "./dist/metaKeyboard.exe"
ahk2exe.exe /in "index.ahk" /icon "metaKeyboard.ico" /out "./dist/metaKeyboard.exe"