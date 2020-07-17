---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 20/12/2019 19:07
---

print("^1 RageUI - testing file is started. ^0")

RMenu.Add('showcase', 'main', RageUI.CreateMenu("RageUI", "Undefined for using SetSubtitle"))
local showcase = RMenu:Get('showcase', 'main');
showcase:SetSubtitle("RageUI Showcase")

showcase:DisplayHeader(true);
showcase:DisplayGlare(true);
showcase:DisplaySubtitle(true);
showcase:DisplayNavigation(true);
showcase:DisplayInstructionalButton(true);

showcase.Closed = function()
    print('Closed Showcase Menu')
end;

showcase.onIndexChange = function(Index)
    print(Index)
end

RMenu.Add('showcase', 'submenu', RageUI.CreateSubMenu(showcase, "SubMenu", "RAGEUI"))
local submenu = RMenu:Get('showcase', 'submenu');
submenu.Closed = function()
    print('Closed Showcase Menu')
end;

submenu.onIndexChange = function(Index)
    print(Index)
end

Keys.Register('E', 'E', 'Open RageUI Showcase menu default.', function()
    RageUI.Visible(showcase, not RageUI.Visible(showcase))
end)



Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(1.0)

        RageUI.IsVisible(showcase, function()
            for i = 1, 100 do

                RageUI.Button('Basic Items', nil, true, {
                    onHovered = function()

                    end,
                    onSelected = function()

                    end,
                    onActive = function()

                    end,
                });

            end
        end, function()

        end)


    end
end)

Citizen.CreateThread(function()
    while (true) do
        Citizen.Wait(1.0)

        RageUI.IsVisible(submenu, function()
            for i = 1, 100 do
                RageUI.Button('Sub Menu', nil, true, {
                    onHovered = function()

                    end,
                    onSelected = function()

                    end,
                    onActive = function()

                    end,
                });
            end
        end, function()

        end)


    end
end)
