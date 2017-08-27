local LR = JB.CLASS_LR();
LR:SetName("RPG Battle");
LR:SetDescription("Y'all get some RPG's and gotta battle!")
LR:SetIcon(Material("icon16/flag_blue.png"))
LR:SetStartCallback(function(prisoner,guard)
		for _,ply in ipairs{prisoner,guard} do
			ply:StripWeapons();
			ply:Give("m9k_rpg7");
			
			ply:SetHealth(200);
			ply:SetArmor(0);
		end
	end)

LR();