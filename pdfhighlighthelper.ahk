/*
PDF highligheter
Version: v1.1
Author: Gez Magpie

hot key setting for xchange Viewer

Manual：
1. only work for part already highlighted defaultly（可以使用“键盘或鼠标右键+h”快速标记高亮）。
3. 使用Ctrl+1~5，change the colour

Thanks：
原版本作者kongsn，
https://github.com/kongsn/pdfhighlighthelper

原版本作者jtanx，
https://gist.github.com/jtanx/09c8f0e6f31ecb61c3d5d3faddbaf559
用于Acrobat DC
*/


msgbox, PDF highligheter assistancer（for xchange viewer）:`r`n    1. only work for part already highlighted defaultly;`r`n    2. Ctrl+1~5change the colour:`r`n        3.1 Ctrl+1: shallow green;`r`n        3.2 Ctrl+1: 绿色;`r`n        3.3 Ctrl+1: 蓝色;`r`n        3.4 Ctrl+1: 紫色;`r`n        3.5 Ctrl+1: 黄色.


SetColour(x, y)
{
	MouseClick, Right
	
	CoordMode, Mouse, Screen
	MouseGetPos, origX, origY
	sleep 30
	MouseClick, Left, origX+93, origY+251
	sleep 200
	
    If WinExist("ahk_class #32770")
    {
        WinActivate
        WinWaitActive
        if !ErrorLevel
        {
            CoordMode, Mouse, Relative
            
            MouseClick, Left, 359, 80   ; Activate the palette
			sleep 30	;程序反应慢，得多等等
            MouseClick, Left, x, y     ; Select the colour.
            sleep 10
			MouseClick, Left, 494, 492	;confirm yes
			
			;回到初始位置
            CoordMode, Mouse, Screen
            MouseMove, origX, origY
            CoordMode, Mouse, Relative
        }
    }
}


; AHK: ^ is Ctrl, ! is Alt, + is shift


; Contribution and work：shallow green
; Ctrl+1  
^1::
SetColour(408, 199) 
return

; Consquence and success: duck blue
; Ctrl+2
^2::
SetColour(426, 142)
return

; unknown need further work：pink
; Ctrl+3
^3::
SetColour(352, 198)
return

; advantage：gold
; Ctrl+4
^4::
SetColour(375, 184)
return

; disadvantage: silver
; Ctrl+5
^5::
SetColour(480, 181)

;explanation:green
;ctrl+6
^6::
SetColour(408, 177)

;point:blue
;ctrl+7
^7::
SetColour(425, 179)
return
