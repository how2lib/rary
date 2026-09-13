warn("Thanks for using H2G scripts!")

-- === KICK LIST ===
local KICK_LIST = {
    ["TGR_CLoudy"] = true,
    ["USERNAME HERE"] = true,
    -- add more names below (lowercase)
}

local KICK_MESSAGE = "You have been blacklisted from: Wanted Car Swap for not completing the steps required to access the script."

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Check existing players
for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer then
        local lowerName = string.lower(plr.Name)
        local lowerDisplay = string.lower(plr.DisplayName)

        if KICK_LIST[lowerName] or KICK_LIST[lowerDisplay] then
            pcall(function()
                plr:Kick(KICK_MESSAGE)
            end)
            print("[KickList] Kicked " .. plr.Name)
        end
    end
end

-- Watch for new players joining
Players.PlayerAdded:Connect(function(plr)
    if plr == LocalPlayer then return end

    local lowerName = string.lower(plr.Name)
    local lowerDisplay = string.lower(plr.DisplayName)

    if KICK_LIST[lowerName] or KICK_LIST[lowerDisplay] then
        task.wait(0.5)  -- let them load
        pcall(function()
            plr:Kick(KICK_MESSAGE)
        end)
        print("[KickList] Kicked " .. plr.Name)
    end
end)
