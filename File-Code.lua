local url = "https://example.com"
local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result and #result > 0 then
    if writefile then
        writefile("Script-Hub.lua", result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script Hub",
            Text = "Saved successfully to Script-Hub.lua!",
            Duration = 5
        })
    else
        setclipboard(result)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Script Hub",
            Text = "Successfully copied to Clipboard!",
            Duration = 5
        })
    end
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Script Hub",
        Text = "Failed to download!",
        Duration = 5
    })
end
