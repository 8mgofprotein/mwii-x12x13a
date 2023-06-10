ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "50 Round Mags"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_pi_golf17_drummag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_mag_xmags2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Primary.ClipSize = 33
    weapon.Animations.Reload = weapon.Animations.Reload_Drummag
	weapon.Animations.Inspect = weapon.Animations.Inspect_drum
	weapon.Animations.Inspect_empty = weapon.Animations.Inspect_empty_drum
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drummag
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Drummag_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Drummag_Fast
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9 
end