-- Game variables
local Players = game:GetService('Players')
local CoreGui = game:GetService('CoreGui')
local UserInputService = game:GetService('UserInputService')
local VirtualUser = game:service('VirtualUser')
local RunService = game:GetService('RunService')
local TweenService = game:GetService('TweenService')
local ContextActionService = game:GetService('ContextActionService')
local HttpService = game:GetService('HttpService')
local TextService = game:GetService('TextService')
local Workspace = game:GetService('Workspace')
local RbxAnalyticsService = game:GetService('RbxAnalyticsService')

-- Player variables
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Mouse = Player:GetMouse()

-- Other variables
local Debris = game:GetService('Debris')

-- Library
local Library = {
    Page = {},
    Section = {},
    Settings = {
        Name = 'SnxwUI', --UI name
        Parent = Player.PlayerGui or CoreGui, -- Parent of the IU

        Prefix = Enum.KeyCode.RightShift, -- Key to show/hide the UI
        Notifications = true, -- Enable notifications
        DefaultTheme = 'Light', -- Theme (light, Dark)

        Lang = 'en', -- Language (en, es, pt)
    },
    User = {
        Rank = 0, -- User range (0: Normal, 1: Premium, 2: Developer)
        HWID = RbxAnalyticsService:GetClientId() -- User identifier
    }
}
