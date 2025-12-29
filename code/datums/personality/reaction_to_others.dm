/datum/personality/callous
	savefile_key = "callous"
	name = "Бесчувственный"
	desc = "Мне не важно, что там у других людей."
	pos_gameplay_desc = "Не волнует смерть"
	neg_gameplay_desc = "Предпочитает не помогать людям"
	groups = list(PERSONALITY_GROUP_DEATH)

/datum/personality/compassionate
	savefile_key = "compassionate"
	name = "Сострадательный"
	desc = "Мне нравится помогать тем, кому это нужно."
	pos_gameplay_desc = "Любит помогать людям"
	neg_gameplay_desc = "Смерть на ваших глазах влияет на вас сильнее"
	groups = list(PERSONALITY_GROUP_DEATH, PERSONALITY_GROUP_MISANTHROPY)

/datum/personality/empathetic
	savefile_key = "empathetic"
	name = "Сопереживающий" // according to google "empathic" means you understand other people, while "empathetic" means you feel what they feel
	desc = "Мне важны чувства других людей."
	pos_gameplay_desc = "Любит видеть счастливых людей"
	neg_gameplay_desc = "Не любит видеть грустных людей"
	groups = list(PERSONALITY_GROUP_OTHERS)

/datum/personality/misanthropic
	savefile_key = "misanthropic"
	name = "Мизантроп"
	desc = "Нам вообще не стоило лететь к звездам."
	pos_gameplay_desc = "Любит видеть грустных людей"
	neg_gameplay_desc = "Не любит видеть счастливых людей"
	groups = list(PERSONALITY_GROUP_OTHERS, PERSONALITY_GROUP_MISANTHROPY)

/datum/personality/aloof
	savefile_key = "aloof"
	name = "Чёрствый"
	desc = "Почему все такие тактильные? Лучше бы оставили меня в покое."
	neg_gameplay_desc = "Не любит, когда его хватают, трогают или обнимают"
	personality_trait = TRAIT_BADTOUCH

/datum/personality/aloof/apply_to_mob(mob/living/who)
	. = ..()
	RegisterSignals(who, list(COMSIG_LIVING_GET_PULLED, COMSIG_CARBON_HELP_ACT), PROC_REF(uncomfortable_touch))

/datum/personality/aloof/remove_from_mob(mob/living/who)
	. = ..()
	UnregisterSignal(who, list(COMSIG_LIVING_GET_PULLED, COMSIG_CARBON_HELP_ACT))

/// Causes a negative moodlet to our quirk holder on signal
/datum/personality/aloof/proc/uncomfortable_touch(mob/living/source)
	SIGNAL_HANDLER

	if(source.stat == DEAD)
		return

	new /obj/effect/temp_visual/annoyed(source.loc)
	if(source.mob_mood.sanity <= SANITY_NEUTRAL)
		source.add_mood_event("bad_touch", /datum/mood_event/very_bad_touch)
	else
		source.add_mood_event("bad_touch", /datum/mood_event/bad_touch)

/datum/personality/aromantic
	savefile_key = "aromantic"
	name = "Аромантичный"
	desc = "На станции нет места романтике."
	neg_gameplay_desc = "Не любит поцелуи и объятия"
	personality_trait = TRAIT_BADTOUCH
