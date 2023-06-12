ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Light Stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf18_stockl.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_stock.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.12
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.12
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end