--send files to client
AddCSLuaFile("modules/buymenu.lua")
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

AddCSLuaFile( "hud.lua" )
--AddCSLuaFile( "cl_buymenu.lua" )

--load files for server
include( "shared.lua" )
include("money.lua")
include("concommand.lua")
include( "database.lua")
--include("chat.lua")

function GM:PlayerSpawn(ply)
      ply:SetGravity( 0.75 )
      ply:SetMaxHealth( 100, true )
      ply:SetRunSpeed( 400 )
      ply:SetWalkSpeed( 350 )
	  ply:Give( "weapon_physcannon" )
      ply:Give( "weapon_physgun" )
      ply:Give( "gmod_tool" )
end

--F4Menu
util.AddNetworkString("f4menu")
function GM:ShowSpare2(ply)
	net.Start("f4menu")
	net.Send(ply)
end