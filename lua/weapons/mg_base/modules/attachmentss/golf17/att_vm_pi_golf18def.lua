ATTACHMENT.Base = "att_conversion"
ATTACHMENT.Name = "DEFAULT"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_stock.vmt")
ATTACHMENT.Conversion = {
	[6] = {"att_sight", "att_vm_minireddot01", "att_vm_minireddot02", "att_vm_minireddot03"},
	[7] = {"att_vm_pi_golf17_slide","att_vm_pi_golf17_slide_long","att_vm_pi_golf17_slide_light"},
	[9] = {"att_laser", "att_vm_laser01_pstl", "att_vm_laser02_pstl", "att_vm_laser03_pstl"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end