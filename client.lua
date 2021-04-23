
ESX = nil
local PlayerData              = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx_lenses:use')
AddEventHandler('esx_lenses:use', function()
    local ped = PlayerPedId()

    -- Number: 1 is the lens color number (color list in readme)
    SetPedEyeColor(ped, 26)
end)



--[[
  1 black
  2 very light blue/green
  3 dark blue
  4 brown
  5 darker brown
  6 light brown
  7 blue
  8 light blue
  9 pink
  10 yellow
  11 purple
  12 black
  13 dark green
  14 light brown
  15 yellow/black pattern
  16 light colored spiral pattern
  17 shiny red
  18 shiny half blue/half red
  19 half black/half light blue
  20 white/red perimter
  21 green snake
  22 red snake
  23 dark blue snake
  24 dark yellow
  25 bright yellow
  26 all black
  27 red small pupil
  28 devil blue/black
  29 white small pupil
  30 glossed over
]]