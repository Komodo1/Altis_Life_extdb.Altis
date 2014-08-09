#include <macro.h>

/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_salmon","Couleur Saumon",175],
			["U_C_Poloshirt_redwhite","Couleur rouge et blanc",150],
			["U_C_Poor_1","Couleur Bleu",250],
			["U_C_Poloshirt_stripped","Polo rayé",250],
			["U_C_Poloshirt_blue","Polo bleu",250],
			["U_C_Poloshirt_burgundy","Polo Burgundy",275],
			["U_C_Poloshirt_tricolour","Polo Tricolor",350],
			["U_I_G_Story_Protagonist_F","Noir Camo",500],
			["U_I_G_resistanceLeader_F","Tenue de combat",500],
			["U_OG_Guerilla3_1","Hunter bronzage",500],
			["U_OG_Guerilla3_2","Hunter vert",500],
			["U_IG_Guerilla2_1","Buttonup noir",500],
			["U_IG_Guerilla2_2","Buttonup à carreaux",650],
			["U_OrestesBody","Surfer",1100],
			["U_IG_Guerilla2_3","Tenue marine",1200],
			["U_C_HunterBody_grn","Hunter crème",1500],
			["U_NikosBody","Couleur rouge dragon",1500],
			["U_NikosAgedBody","Costard",1500],
			["U_C_WorkerCoveralls","Combinaison mécanicien",2500]
		];
	};

	//Hats
	case 1:
	{
		[
			["H_Cap_red",nil,50],
			["H_Cap_blu",nil,50],
			["H_Cap_oli",nil,50],
			["H_Cap_grn",nil,50],
			["H_Cap_tan",nil,50],
			["H_Cap_blk",nil,50],
			["H_Cap_blk_CMMG",nil,50],
			["H_Cap_blk_ION",nil,50],
			["H_Booniehat_grn",nil,50],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_dirty",nil,50],
			["H_Bandanna_surfer",nil,50],
			["H_Bandanna_khk",nil,50],
			["H_Bandanna_cbr",nil,50],
			["H_Bandanna_sgg",nil,50],
			["H_Bandanna_gry",nil,50],
			["H_StrawHat",nil,50],
			["H_StrawHat_dark",nil,50],
			["H_Hat_blue",nil,50],
			["H_Hat_brown",nil,50],
			["H_Hat_grey",nil,50],
			["H_Watchcap_blk",nil,50],
			["H_Watchcap_khk",nil,50],
			["H_Watchcap_sgg",nil,50],
			["H_Watchcap_camo",nil,50],
			["H_Hat_checker",nil,50]

		];
	};

	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,0],
			["G_Shades_Blue",nil,0],
			["G_Sport_Blackred",nil,0],
			["G_Sport_Checkered",nil,0],
			["G_Sport_Blackyellow",nil,0],
			["G_Sport_BlackWhite",nil,0],
			["G_Squares",nil,0],
			["G_Lowprofile",nil,0],
			["G_Combat",nil,0],
			["G_Aviator",nil,0],
			["G_Lady_Mirror",nil,0],
			["G_Lady_Dark",nil,0],
			["G_Lady_Blue",nil,0],
			["G_Lowprofile",nil,0]
		];
	};

	//Vest
	case 3:
	{
		[
			["V_BandollierB_cbr",nil,4500]
		];
	};

	//Backpacks
	case 4:
	{
		[
			["B_FieldPack_ocamo","20 places",1000],

			["B_AssaultPack_blk","30 places",2000],
			["B_AssaultPack_cbr","30 places",2000],
			["B_AssaultPack_khk","30 places",2000],
			["B_AssaultPack_sgg","30 places",2000],
			["B_AssaultPack_rgr","30 places",2000],
			["B_AssaultPack_Kerry","30 places",2000],

			["B_FieldPack_cbr","40 places",4000],
			["B_FieldPack_blk","40 places",4000],

			["B_Kitbag_mcamo","40 places",4000],

			["B_Kitbag_sgg","55 places",7000],
			["B_Kitbag_cbr","55 places",7000],
			["B_Bergen_sgg","55 places",7000],

			["B_Carryall_oucamo","70 places",10000]
		];
	};
};