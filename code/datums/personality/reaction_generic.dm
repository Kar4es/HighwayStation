/datum/personality/apathetic
	savefile_key = "apathetic"
	name = "Апатичный"
	desc = "Меня мало что волнует. Ни плохое, ни хорошее, и уж точно не ужастное."
	neut_gameplay_desc = "Все эмоции влияют на вас слабее"
	groups = list(PERSONALITY_GROUP_MOOD_POWER)

/datum/personality/apathetic/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.mood_modifier -= 0.2

/datum/personality/apathetic/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.mood_modifier += 0.2

/datum/personality/sensitive
	savefile_key = "sensitive"
	name = "Чувствительный"
	desc = "Я легко поддаюсь влиянию окружающего мира."
	neut_gameplay_desc = "Все эмоции влияют на вас сильнее"
	groups = list(PERSONALITY_GROUP_MOOD_POWER)

/datum/personality/sensitive/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.mood_modifier += 0.2

/datum/personality/sensitive/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.mood_modifier -= 0.2

/datum/personality/resilient
	savefile_key = "resilient"
	name = "Устойчивый"
	desc = "Черт с ним, я справлюсь!"
	pos_gameplay_desc = "Негативные эмоции проходят быстрее"
	groups = list(PERSONALITY_GROUP_MOOD_LENGTH)

/datum/personality/resilient/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.negative_moodlet_length_modifier -= 0.2

/datum/personality/resilient/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.negative_moodlet_length_modifier += 0.2

/datum/personality/brooding
	savefile_key = "brooding"
	name = "Задумчивый"
	desc = "Всё это меня очень задело, не могу перестать об этом думать..."
	neg_gameplay_desc = "Негативные эмоции длятся дольше"
	groups = list(PERSONALITY_GROUP_MOOD_LENGTH)

/datum/personality/brooding/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.negative_moodlet_length_modifier += 0.2

/datum/personality/brooding/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.negative_moodlet_length_modifier -= 0.2

/datum/personality/hopeful
	savefile_key = "hopeful"
	name = "Оптимистичный"
	desc = "Я верю, что все наладится."
	pos_gameplay_desc = "Позитивные эмоции длятся дольше"
	groups = list(PERSONALITY_GROUP_HOPE)

/datum/personality/hopeful/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.positive_moodlet_length_modifier += 0.2

/datum/personality/hopeful/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.positive_moodlet_length_modifier -= 0.2

/datum/personality/pessimistic
	savefile_key = "pessimistic"
	name = "Пессиместичный"
	desc = "Я думаю, что худшее еще впереди."
	neg_gameplay_desc = "Позитивные эмоции проходят быстрее"
	groups = list(PERSONALITY_GROUP_HOPE)

/datum/personality/pessimistic/apply_to_mob(mob/living/who)
	. = ..()
	who.mob_mood?.positive_moodlet_length_modifier -= 0.2

/datum/personality/pessimistic/remove_from_mob(mob/living/who)
	. = ..()
	who.mob_mood?.positive_moodlet_length_modifier += 0.2

/datum/personality/whimsical
	savefile_key = "whimsical"
	name = "Причудливый"
	desc = "Все на этой станции слишком серьезные, расслабьтесь!"
	pos_gameplay_desc = "Нравятся бессмысленные, глупые штуки и точно не против клоунских шуток"

/datum/personality/snob
	savefile_key = "snob"
	name = "Сноб"
	desc = "Я ожидаю только лучшего. Всё что хуже - неприемлимо!"
	neut_gameplay_desc = "Качество помещения влияет на ваше настроение"
	personality_trait = TRAIT_SNOB
