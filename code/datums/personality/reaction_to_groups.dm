/datum/personality/introvert
	savefile_key = "introvert"
	name = "Интроверт"
	desc = "Предпочту почитать в библиотеке."
	pos_gameplay_desc = "Любит находится в библиотеке"
	neg_gameplay_desc = "Не любит большие группы" // почему то было закомментировано
	personality_trait = TRAIT_INTROVERT
	groups = list(PERSONALITY_GROUP_INTERACTION)

/datum/personality/extrovert
	savefile_key = "extrovert"
	name = "экстраверт"
	desc = "Предпочту выпить пару стопок в окружении людей"
	pos_gameplay_desc = "Любит находится в баре"
	neg_gameplay_desc = "Не любит быть в одиночестве" // почему то было закомментировано
	personality_trait = TRAIT_EXTROVERT
	groups = list(PERSONALITY_GROUP_INTERACTION, PERSONALITY_GROUP_OTHERS)

/datum/personality/paranoid
	savefile_key = "paranoid"
	name = "Параноик"
	desc = "Тут все пытаются меня убить! За каждым углом ловушка!"
	pos_gameplay_desc = "Предпочитает одиночество или быть в средних группах"
	neg_gameplay_desc = "Испытывает стресс при общении с одним человеком или в большой группе"
	processes = TRUE
	groups = list(PERSONALITY_GROUP_PEOPLE_FEAR)

/datum/personality/paranoid/remove_from_mob(mob/living/who)
	. = ..()
	who.clear_mood_event("paranoia_personality")

/datum/personality/paranoid/on_tick(mob/living/subject, seconds_per_tick)
	var/list/nearby_people = list()
	for(var/mob/living/carbon/human/nearby in view(subject, 5))
		if(nearby == subject || !is_dangerous_mob(subject, nearby))
			continue
		nearby_people += nearby

	switch(length(nearby_people))
		if(0)
			subject.add_mood_event("paranoia_personality", /datum/mood_event/paranoid/alone)
		if(1)
			subject.add_mood_event("paranoia_personality", /datum/mood_event/paranoid/one_on_one)
		if(2 to 6) // 6 people is roughly the size of the larger jobs like meddoc or secoff
			subject.add_mood_event("paranoia_personality", /datum/mood_event/paranoid/small_group)
		else
			subject.add_mood_event("paranoia_personality", /datum/mood_event/paranoid/large_group)

/datum/personality/paranoid/proc/is_dangerous_mob(mob/living/subject, mob/living/carbon/human/target)
	if(target.stat >= UNCONSCIOUS)
		return FALSE
	if(target.invisibility > subject.see_invisible || target.alpha < 20)
		return FALSE
	// things that are threatening: other players
	// things that are also threatening: monkeys
	return TRUE
