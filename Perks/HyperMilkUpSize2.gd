extends PerkBase

var sayParser = SayParser.new()

func _init():
	id = "HyperMilkUpSize2"
	skillGroup = "Hyper"

func getVisibleName():
	return "Peta milk"

func getVisibleDescription():
	return "Your breasts can get bigger by five additional sizes when lactating."

func getMoreDescription():
	return sayParser.processString("[say=pc]Mooo![/say]\n" \
	+ "Milking is love, milking is life")

func getRequiredPerks():
	return ["HyperMilkUpSize1"]

func getSkillTier():
	return 2

func getCost():
	return 16

func getPicture():
	return "res://Modules/Z_Hypertus/Images/PLACEHOLDER.png"

func getBuffs():
	return [
		buff(Buff.BreastsLactatingSizeLimitBuff, [5]),
	]

func hiddenWhenLocked() -> bool:
	var breastsPartHas = GM.pc.bodypartHasTrait(BodypartSlot.Breasts,"PartTrait.Hyperable")
	if !breastsPartHas or !(GM.pc.getBodypart(BodypartSlot.Breasts).getBaseSize() == -1): # get rid of forever flat
		return true
	return false