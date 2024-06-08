repeat wait() until game:IsLoaded()
for i = 1, 25 do
    print("[❕] Waiting Check", i)
    wait(1)
end

local function Check()
    print("[❕] Checking")
    if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Anime Defenders') then
        print("[❕] Running > True")
        return true
    else
        for j = 1, 30 do
            print("[❕] Secondary Check ", j)
            if game.Players.LocalPlayer.PlayerGui:FindFirstChild('Anime Defenders') then
                print("[❕] Running > True")
                return true
            else
                wait(1)
            end
        end
        game.Players.LocalPlayer:Kick('Check Scripting')
        return false
    end
end

task.spawn(function()
    for i = 1, 100 do
        print("[❕] Check ", i)
        if Check() then
            break
        end
        wait(1)
    end
end)
