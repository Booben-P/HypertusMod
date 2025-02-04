extends PerkBase

var sayParser = SayParser.new()

func _init():
	id = "HyperVirility2"
	skillGroup = "Hyper"

func getVisibleName():
	return "City Populator"

func getVisibleDescription():
	return "Your sperm quality improves 70%"

func getMoreDescription():
	return sayParser.processString("[say=pc]I noticed the increase amount of child I had with newer "+RNG.pick(["partners","fucktoys","bitches"])+"[/say]\n")

func getRequiredPerks():
	return ["HyperVirility1"]

func getSkillTier():
	return 2

func getCost():
	return 16

func getPicture():
	return "res://Modules/Z_Hypertus/Images/PLACEHOLDER.png"

func getBuffs():
	return [
		buff(Buff.VirilityBuff, [70]),
	]

func hiddenWhenLocked() -> bool:
	var penisPartHas = GM.pc.bodypartHasTrait(BodypartSlot.Penis,"PartTrait.Hyperable")
	if !penisPartHas:
		return true
	return false