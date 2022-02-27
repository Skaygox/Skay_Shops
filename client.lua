--------------------------------
-- Shops en RageUI by Skaygox --
--------------------------------
-- https://discord.gg/53QkD7tW -
--------------------------------

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('Shops', 'main', RageUI.CreateMenu("Shops", "Menu Shops"))
RMenu.Add('Shops', 'boisson', RageUI.CreateSubMenu(RMenu:Get('Shops', 'main'), "Boisson", "Menu Boisson"))
RMenu.Add('Shops', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('Shops', 'main'), "Nourriture", "Menu Nourriture"))
RMenu.Add('Shops', 'telephone', RageUI.CreateSubMenu(RMenu:Get('Shops', 'main'), "Telephone", "Menu Telephone"))
RMenu.Add('Shops', 'cartesim', RageUI.CreateSubMenu(RMenu:Get('Shops', 'main'), "Carte sim", "Menu Carte sim"))


Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('Shops', 'main'), true, true, true, function()

            RageUI.Button("Boisson", "Choisi ta Boisson !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Shops', 'boisson'))

            RageUI.Button("Nourriture", "Choisi ta Nourriture !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Shops', 'nourriture'))

            RageUI.Button("Telephone", "Choisi ton telephone !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Shops', 'telephone'))

            RageUI.Button("Carte sim", "Choisie ta carte sim !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('Shops', 'cartesim'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('Shops', 'boisson'), true, true, true, function()

            RageUI.Button("Eau", "L'eau c'est bon !", {RightLabel = "~g~5$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyEau')
                end
            end)
        end, function()
        end)
        
        RageUI.IsVisible(RMenu:Get('Shops', 'nourriture'), true, true, true, function()

            RageUI.Button("Pain", "La nourriture c'est bon !", {RightLabel = "~g~5$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyPain')
                end
            end)       
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('Shops', 'telephone'), true, true, true, function()

            RageUI.Button("Telephone", "Prends ton telephone !", {RightLabel = "~g~5$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyTelephone')
                end
            end)       
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('Shops', 'cartesim'), true, true, true, function()

            RageUI.Button("Carte sim", "Prends ton objet !", {RightLabel = "~g~5$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuySim')
                end
            end)

        end, function()
            ---Panels
        end, 1) 
    
            Citizen.Wait(0)
        end
    end)

    local position = {
        {x = 26.0 , y = -1345.37, z = 28.60, },
        {x = -3039.46, y = 585.99,   z = 6.91},
        {x = 2557.134,  y = 382.35,    z = 108.62},
        {x = -3039.51, y = 586.31,   z = 7.91},
        {x = -3242.23, y = 1001.6,   z = 12.83},
        {x = 547.56,   y = 2671.27,   z = 42.16},
        {x = 1961.44,  y = 3740.95,  z = 32.34},
        {x = 2678.16,   y = 3280.82,  z = 55.24},
        {x = 1729.29,  y = 6414.34,  z = 35.04},
        {x = 1135.86,  y = -982.15,   z = 46.42},
        {x = -1223.24, y = -906.95,  z = 12.33},
        {x = -1487.24,  y = -379.63,  z = 40.16},
        {x = -2968.28, y = 390.43,   z = 15.04},
        {x = 1166.07,  y = 2708.77,  z = 38.16},
        {x = 1392.61,  y = 3604.36,  z = 34.98},
        {x = -48.5,    y = -1757.58, z = 29.42},
        {x = 1163.17,  y = -324.11,   z = 69.21},
        {x = -707.67,  y = -914.72,  z = 19.22},
        {x = -1820.8, y = 792.4,   z = 138.12},
        {x = 1698.28,  y = 4925.17,  z = 42.06}
    }   
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do

                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
               DrawMarker(20, 26.0 , -1345.37, 28.90, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -3039.51, 586.31,  7.50, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 2557.134, 382.35,  108.10, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -3242.23, 1001.6, 12.30, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 547.56,  2671.27, 41.60, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1961.44, 3740.95, 31.80, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 2678.16,  3280.82, 54.70, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1729.29, 6414.34, 34.50, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1136.14, -982.3, 45.82, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -1223.19, -907.07, 11.73, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -1487.24, -379.63, 39.60, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -2968.28, 390.43, 14.50, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1166.02, 2708.99, 37.56, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1392.61, 3604.36, 34.50, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -48.5, -1757.58, 29.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1163.17, -324.11, 68.75, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -707.67, -914.72, 18.65, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, -1820.8, 792.4, 137.55, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
               DrawMarker(20, 1698.28, 4925.17, 41.55, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 11, 255, 0, 85, 0, 1, 2, 0, nil, nil, 0)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour acceder au ~b~Shop",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('Shops', 'main'), not RageUI.Visible(RMenu:Get('Shops', 'main')))
                    end
                end
            end
        end
    end)

    