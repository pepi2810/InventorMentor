local composer = require( "composer" )
local scene = composer.newScene()
------------------------------------------------------------------------------------------
display.setStatusBar(display.HiddenStatusBar);


centerX = display.contentCenterX
centerY = display.contentCenterY

function scene:create( event )

    local sceneGroup = self.view
    local BG = display.newImage("background.png", centerX, centerY)
    sceneGroup:insert( BG )

    lever = display.newImage("wedgeImages/wedge27.png", 160, 50)
    sceneGroup:insert( lever )
    leverText = display.newText("Wedge Help", 160 , -20, native.systemFontBold, 20)
    leverText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( leverText )

    tipText = display.newText("Tip:", 300 , 230, display.contentWidth, display.contentHeight * 0.5, native.systemFontBold, 20)
    tipText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( tipText )

    tipTextinfo = display.newText("It is important to know how to find mechanical advantage because in our robotics competitions you can not use more than ten motors on your robot.", 165 , 260, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 15)
    tipTextinfo:setTextColor( 1, 1, 0 )
    sceneGroup:insert( tipTextinfo )

    objText = display.newText("Objective:", 260 , 330, display.contentWidth, display.contentHeight * 0.5, native.systemFontBold, 20)
    objText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( objText )

    objTextinfo = display.newText("The object of the game is to must match the length and width with the corresponding axe.", 165 , 360, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 15)
    objTextinfo:setTextColor( 1, 1, 0 ) 
    sceneGroup:insert( objTextinfo )

    howText = display.newText("How to Play: ", 250 , 410, display.contentWidth, display.contentHeight * 0.5, native.systemFontBold, 20)
    howText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( howText )

    howTextinfo = display.newText("Click on the wedge falling down the screen. In order to receive a reward. You must match the wedge with the length and height on top.", 165 , 435, display.contentWidth, display.contentHeight * 0.5, native.systemFont, 15)
    howTextinfo:setTextColor( 1, 1, 0 )
    sceneGroup:insert( howTextinfo )

    playText = display.newText("Play", 60 , 470, native.systemFontBold, 30)
    playText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( playText )

    playText2 = display.newText("Now", 60 , 500, native.systemFontBold, 30)
    playText2:setTextColor( 1, 1, 0 )
    sceneGroup:insert(playText2)

    moreinfoText = display.newText("More", 260 , 470, native.systemFontBold, 30)
    moreinfoText:setTextColor( 1, 1, 0 )
    sceneGroup:insert( moreinfoText )

    moreinfoText2 = display.newText("Info", 260 , 500, native.systemFontBold, 30)
    moreinfoText2:setTextColor( 1, 1, 0 )
    sceneGroup:insert( moreinfoText2 )

end

function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "did" ) then

       function gotoGamemenu(event)
        if event.phase == "ended" then 
            composer.gotoScene( "help", { time = 500, effect = "zoomInOutFade" })
        end
    end

       function gotoGear(event)
        if event.phase == "ended" then 
            composer.gotoScene( "wedgeGame", { time = 500, effect = "zoomInOutFade" })
        end
    end

playText:addEventListener( "touch", gotoGear )
playText2:addEventListener( "touch", gotoGear )
moreinfoText:addEventListener( "touch", gotoGamemenu )
moreinfoText2:addEventListener( "touch", gotoGamemenu )


    end
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )

return scene