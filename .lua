local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer 
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
	Name = "Logged in",
	Content = "You are logged in as"..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "FREEPHOENIX"
_G.KeyInput = "string"

function MakeScriptHub()
    local Window = OrionLib:MakeWindow({Name = "Phoenix Hub Made By I Placement", HidePremium = false, SaveConfig = true, IntroEnabled = false})

    local Tab = Window:MakeTab({
        Name = "Aimbot",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    function MakeScriptHub()
    
    end
    
    Tab:AddButton({
        Name = "Aimbot",
        Callback = function()
                  print("button pressed")
                MakeScriptHub()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/aimbot-free/main/.lua'))()
          end
    })

    local Tab = Window:MakeTab({
        Name = "ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    function MakeScriptHub()
    
    end
    
    Tab:AddButton({
        Name = "ESP",
        Callback = function()
                  print("button pressed")
                MakeScriptHub()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/esp/main/.lua'))()
          end
    })

    Tab:AddButton({
        Name = "Skeleton",
        Callback = function()
                  print("button pressed")
                MakeScriptHub()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/lenny2010/skeleton/main/.lua"))()
          end
    })

    local Tab = Window:MakeTab({
        Name = "Radar",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    function MakeScriptHub()
    
    end
    
    Tab:AddButton({
        Name = "Radar",
        Callback = function()
                  print("button pressed")
                MakeScriptHub()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/lenny2010/radar/main/.lua'))()
          end
    })

    
    
    function MakeScriptHub()
    
    end
    

    
    
    function MakeScriptHub()
    
    end
    
    

end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Incorrect Key!",
        Content = "You have entered the incorrect key!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
            else
                IncorrectKeyNotification()
            end
        end   
})
