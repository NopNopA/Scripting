repeat wait() until game:IsLoaded()


for i = 1, 25 do
    print("[❕] Waiting Check", i)
    wait(1)
end

local function Check()
    print("[❕] Checking Check()")
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Anime Defenders') then
        print("[❕] Running > True")
        return
    else
        for j = 1, 30 do
            print("[❕] Checking times ", j)
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Anime Defenders') then
                print("[❕] Running > True")
                return 
            else
                wait(1)
            end
        end
        game.Players.LocalPlayer:Kick('Check Scripting')
        return
    end
end

task.spawn(function()
    print("[❕] Starting function()")
    Check()
end)
