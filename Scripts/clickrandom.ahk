^0::ExitApp		;ctrl+0 to stop
^9::pause		;ctrl+9 to pause
^2::Reload		;ctrl+2 to restart
^1::			;ctrl+1 to start

; Click at a random location around the cursor position

CoordMode, Mouse, Screen

		; MsgBox, Locate Mouse Position 1

MouseGetPos, xpos, ypos

		; replace the square size with declared or input variable

		; InputBox, squareSize, Square Size, Please enter the Square Size.., , 220, 140
		; ########	squareSize := 51

squareSize := 51
squareHalf := Ceil(squareSize/2)

		; MsgBox, squareSize=%squareSize%
		; MsgBox, squareHalf=%squareHalf%


xmins := xpos - squareHalf
xplus := xpos + squareHalf

ymins := ypos - squareHalf
yplus := ypos + squareHalf


i := 1
while(i < 50){


		Random, randX, xmins, xplus
		Random, randY, ymins, yplus


				; MsgBox, xpos=%xpos%, ypos=%ypos%
				; MsgBox, randX=%randX%, randY=%randY%


		Click %randX% %randY%

		MouseMove, xpos, ypos, 0


i++
}


return
