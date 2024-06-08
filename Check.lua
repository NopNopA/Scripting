repeat wait() until game:IsLoaded()

for i = 1, 30 do
    print("[❕] Waiting Check", i)
    wait(1)
end

local function Check()
    print("[❕] Checking")
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Anime Defenders') then
        print("[❕] Running > True")
    else
        game.Players.LocalPlayer:Kick('Check Scripting')
    end
end

task.spawn(function()
    for i = 1, 100 do
        print("[❕] Check ", i)
        Check()
        wait(1)
    end
end)
