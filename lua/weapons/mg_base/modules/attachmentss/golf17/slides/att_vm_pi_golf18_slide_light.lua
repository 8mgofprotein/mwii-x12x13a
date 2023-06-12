ATTACHMENT.Base = "att_vm_pi_golf21_slide"
ATTACHMENT.Name = "XRX LUC-9"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf18_barlight.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_v2.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end 