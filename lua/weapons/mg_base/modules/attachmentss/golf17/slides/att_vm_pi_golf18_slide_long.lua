ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XRX Sidewinder-6 Slide"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf18_bartac.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_slide_long.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
    weapon.Primary.RPM = weapon.Primary.RPM + 100
end 