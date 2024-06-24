-- Define the path to the Titans folder
local titansFolder = game.Workspace.Titans

-- Function to update the Nape part
local function updateNape()
    for _, titan in ipairs(titansFolder:GetChildren()) do
        -- Check if the current child is a model
        if titan:IsA("Model") then
            -- Get the Hitboxes folder
            local hitboxes = titan:FindFirstChild("Hitboxes")
            if hitboxes then
                -- Get the Nape part
                local nape = hitboxes:FindFirstChild("Nape")
                if nape then
                    -- Change the size and make it visible
                    nape.Size = Vector3.new(300, 300, 300)
                    nape.Transparency = 0.5 -- Set transparency to 0 to make it visible
                end

                -- Get the BeserkNape part
                local beserkNape = hitboxes:FindFirstChild("BeserkNape")
                if beserkNape then
                    -- Change the size and make it visible
                    beserkNape.Size = Vector3.new(300, 300, 300)
                    beserkNape.Transparency = 0.5 -- Set transparency to 0 to make it visible
                end
            end
        end
    end
end

-- Function to loop the update every 5 seconds
local function mainLoop()
    while true do
        updateNape()
        wait(5) -- Wait for 5 seconds before the next update
    end
end

-- Start the main loop function
mainLoop()
