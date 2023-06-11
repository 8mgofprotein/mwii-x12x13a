ATTACHMENT.Base = "att_conversion"
ATTACHMENT.Name = "Impact Point"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_genshinimpactbar.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_stock.vmt")
ATTACHMENT.ExcludedAttachments = {"att_vm_pi_golf18skel_stock"}
ATTACHMENT.ExcludedCategories = {"Barrels"}
ATTACHMENT.Conversion = {
	[6] = {"att_sight", "att_vm_2x_west02_holo", "att_vm_2x_west02", "att_vm_reflex_02", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_hybrid_west02", "att_vm_hybrid_west02_thermal", "att_vm_reflex_west04", "att_vm_2x_west01",
    "att_vm_hybrid_west03", "att_vm_4x_east01",
    "att_vm_4x_west01", "att_vm_4x_west02",
    "att_vm_scope_mike14", "att_vm_scope_vz"},
	[7] = {"att_barrel"},
	[9] = {"att_laser", "att_vm_laser01", "att_vm_laser02", "att_vm_laser03"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(1.66, 0, -0.15)
    weapon.ViewModelOffsets.Idle.Pos = Vector(0, 1.2, -0.1)
	weapon.ViewModelOffsets.Sprint.Pos = weapon.ViewModelOffsets.Sprint.Pos + Vector(-2, -1, -1)
    weapon.Zoom.Blur.EyeFocusDistance = 10
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.5

end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetViewModel("models/kyo/vm_pi_x13a_genshinimpactbar.mdl")
end