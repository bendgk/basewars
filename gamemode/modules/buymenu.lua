net.Receive("f4menu", function()
	--main window
	local x = 1000/1768 * ScrW()
	local y = 700/992 * ScrH()
	local menu = vgui.Create("DFrame")
	menu:SetSize(x, y)
	menu:SetPos(ScrW()/2 - x/2, ScrH()/2 - y/2)
	menu:SetTitle("Basewars Menu")
	menu:SetDraggable(false)
	menu:ShowCloseButton(true)
	menu:MakePopup()
	
	--
	
	local navbarPanel = vgui.Create("DFrame", menu)
	navbarPanel:SetSize(x * .2, y - 25)
	navbarPanel:SetPos(0, 25)
	navbarPanel:ShowCloseButton()
	navbarPanel:SetTitle("")
	
	local navbar = vgui.Create("DScrollPanel", navbarPanel)
	navbar:Dock(FILL)
	
	--shop
	local shopCategory = navbar:Add("DCollapsibleCategory")
	shopCategory:SetPos( 1, 0)
	shopCategory:SetSize( navbarPanel:GetWide() - 2, 30 )
	shopCategory:SetLabel( "Shop" )
	
	local navbarArray = {}
	
	for i=0, 5 do
		navbarArray[i] = shopCategory:Add("DButton")
		navbarArray[i]:SetColor(Color(255, 255, 255))
		navbarArray[i]:SetText("button #" .. tostring(i + 1))
		navbarArray[i]:SetPos( 10, 40 * i)
		navbarArray[i]:SetSize(navbarPanel:GetWide() - 5, 30 )
	end
	
	--weapons button
	navbarArray[0]:SetText("Weapons")
	navbarArray[1]:SetText("Printers")
	navbarArray[2]:SetText("Base")
	navbarArray[3]:SetText("Entities")
	navbarArray[4]:SetText("Vehicles")
	navbarArray[5]:SetText("Fun")
	
end)
