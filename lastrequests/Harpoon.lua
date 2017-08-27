local LR = JB.CLASS_LR();
LR:SetName("Harpoon Battle");
LR:SetDescription("Both contestant's get a Harpoon and will fight for the end of the round. ")
LR:SetIcon(Material("icon16/flag_blue.png"))
LR:SetStartCallback(function(prisoner,guard)
		for _,ply in ipairs{prisoner,guard} do
			ply:StripWeapons();
			ply:Give("m9k_harpoon");
			
			ply:SetHealth(100);
			ply:SetArmor(0);
		end
	end)

LR();