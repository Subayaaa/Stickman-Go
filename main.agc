
// Project: Latihan 1 
// Created: 2024-04-26

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Latihan 1" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 60, 1 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage(1, "pngegg.png") // Load gambar di folder media, ID Image = 1

CreateSprite(1, 1) // Membuat sprite dari gambar 1, ID sprite = 1
SetSpriteScale(1, 0.9, 0.9) // Merubah ukuran sprite ID 1
SetSpriteSize(1, 500, 500)

// Merubah posisi sprite supaya berada di tengah layar
SetSpritePosition(1, (1024 / 2) - (GetSpriteWidth(1) / 2), (768 / 2) - (GetSpriteHeight(1) / 2))

SetJoystickScreenPosition(200, 800, 20) // Membuat joystick


do
	
	x = GetJoystickX() * 100 // Mengambil nilai joystick x
    y = GetJoystickY() * 100 // Mengambil nilai joystick y
    
    SetSpritePosition(1, GetSpriteX(1) + x, GetSpriteY(1) + y) // Merubah posisi ID sprite 1 ke posisi yang lain
    
    if(GetSpriteX(1) < 0)
		SetSpriteX(1, 0)
	endif
	
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1, GetVirtualWidth() - GetSpriteWidth(1))
	endif
	
	if(GetSpriteY(1) < 0)
		SetSpriteY(1, 0)
	endif
	
	if(GetSpriteY(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteY(1, GetVirtualWidth() - GetSpriteWidth(1))
	endif

    Print( ScreenFPS() )
    Sync()
loop
