extends PerkBase

var sayParser = SayParser.new()

func _init():
	id = "HyperCum4"
	skillGroup = "Hyper"

func getVisibleName():
	return "Cum Cannon"

func getVisibleDescription():
	return "Your balls refills and holds 1800% more"

func getMoreDescription():
	return sayParser.processString("[say=pc]Test successful, I guess?[/say]\n...")

func getRequiredPerks():
	return [Perk.BreedCumProductionV3, Perk.BreedCumVolumeV3, "HyperCum3"]

func hiddenWhenLocked() -> bool:
	var penisPartHas = GM.pc.bodypartHasTrait(BodypartSlot.Penis,"PartTrait.Hyperable")
	if !penisPartHas:
		return true
	return false

func getSkillTier():
	return 4

func getCost():
	return 64

func getPicture():
	return "res://Modules/Z_Hypertus/Images/PLACEHOLDER.png"

func getBuffs():
	return [
		buff(Buff.PenisCumProductionBuff, [1800]),
		buff(Buff.PenisBallsVolumeBuff, [1800]),
	]