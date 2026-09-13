warn("Thanks for using H2G scripts!")

-- === SELF-KICK LIST ===
-- If the person running the script is on this list, they get kicked.
local KICK_LIST = {
    ["tgr_cloudy"] = true,
    ["baduser321"] = true,
    -- add more usernames below (lowercase, no spaces)
}

local KICK_MESSAGE = "You have been blacklisted from: Wanted Car Swap for not completing the steps required to access the script."

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Get lowercase versions for matching
local myName = string.lower(LocalPlayer.Name)
local myDisplay = string.lower(LocalPlayer.DisplayName)

-- Check against the list
if KICK_LIST[myName] or KICK_LIST[myDisplay] then
    warn("[KickList] You are blacklisted. Kicking...")
    LocalPlayer:Kick(KICK_MESSAGE)
    return  -- stop the rest of the payload from running
end

print("[KickList] You are not blacklisted. Continuing...")
-- rest of payload below
