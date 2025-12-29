/datum/personality/brave
	savefile_key = "brave"
	name = "Храбрый"
	desc = "Небольшое количество крови меня не пугает."
	pos_gameplay_desc = "Страх накапливается медленнее, связанные с этим эмоции слабее"
	groups = list(PERSONALITY_GROUP_GENERAL_FEAR, PERSONALITY_GROUP_PEOPLE_FEAR)

/datum/personality/cowardly
	savefile_key = "cowardly"
	name = "Трусливый"
	desc = "Повсюду опасность! Даже в воздухе!"
	neg_gameplay_desc = "Страх накапливается быстрее, связанные с этим эмоции сильнее"
	groups = list(PERSONALITY_GROUP_GENERAL_FEAR)
