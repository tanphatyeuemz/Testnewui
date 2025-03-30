loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "PhatDepZai Hub",
         Animation = "2001"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"Concumauhong"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=133634881016886",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Main"})
     local Tab2o = MakeTab({Name = "Setting Farm"})
     local Tab3o = MakeTab({Name = "Race V4"})
     
     
-------TOGGLE 

     Toggle = AddToggle(Tab1o, {
      Name = "Setting Farm",
      Default = false,
      Callback = function()
     end
    })
    
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "FIX LAG",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })
     AddButton(Tab1o, {
     Name = "SCRIPT",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  end
  })   AddButton(Tab1o, {
     Name = "2",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "3",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "4",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "FIX LAG",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  })
----- Dropdown 

  Dropdown = AddDropdown(Tab1o, {
     Name = "a",
     Options = {"Test 1", "Test 2", "Test 3", "Test 4"},
     Default = "Melee",
     Callback = function()
     end
   })

----- Section 
   
   Section = AddSection(Tab1o, {"a"})          

----- Paragraph 
                    
   Paragraph = AddParagraph(Farm, {"a", ""})
   
   