/datum/personality/ascetic
	savefile_key = "ascetic"
	name = "Аскетичный"
	desc = "Меня не волнует как выглядит еда, это всего лишь топливо для организма."
	pos_gameplay_desc = "Эмоции от употребления нелюбимой пищи слабее"
	neg_gameplay_desc = "Удовольствие от употребления любимой пищи слабее"
	groups = list(PERSONALITY_GROUP_FOOD)

/datum/personality/gourmand
	savefile_key = "gourmand"
	name = "Гурман"
	desc = "Еда для меня - это всё!"
	pos_gameplay_desc = "Удовольствие от употребления любимой пищи сильнее"
	neg_gameplay_desc = "Грусть от употребления нелюбимой пищи сильнее, посредственная еда приносит меньше удовольствия"
	groups = list(PERSONALITY_GROUP_FOOD)

/datum/personality/teetotal
	savefile_key = "teetotal"
	name = "Трезвенник"
	desc = "Алкоголь не для меня."
	neg_gameplay_desc = "Не любит пить алкоголь"
	groups = list(PERSONALITY_GROUP_ALCOHOL)

/datum/personality/bibulous
	savefile_key = "bibulous"
	name = "Пьяница"
	desc = "После первой и второй перерывчик небольшой!"
	pos_gameplay_desc = "Удовольствие от алкоголя сильнее, даже если вы перестаете быть пьяным"
	groups = list(PERSONALITY_GROUP_ALCOHOL)
