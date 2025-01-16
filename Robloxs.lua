repeat task.wait(1) until game:IsLoaded()
game.StarterGui:SetCore("SendNotification", {
    Title = 'NOT LOADED',
    Text = 'Pls Update Services',
    Duration = 100,
    Icon = 'rbxassetid://18976336309'
})
