/datum/quirk/monophobia
	name = "Монофобия"
	desc = "Вы панически боитесь одиночества. Подсознательно вы всегда стремитесь быть в компании, будь то шумная толпа или просто ещё один человек рядом."
	icon = FA_ICON_PEOPLE_GROUP
	value = -3
	medical_record_text = "Пациент страдает патологическим страхом остаться в одиночестве."
	hardcore_value = 5
	mail_goodies = list(/obj/effect/spawner/random/entertainment/plushie)

/datum/quirk/monophobia/add(client/client_source)
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.gain_trauma(new /datum/brain_trauma/severe/monophobia(), TRAUMA_RESILIENCE_ABSOLUTE)

/datum/quirk/monophobia/remove()
	var/mob/living/carbon/human/human_holder = quirk_holder
	human_holder.cure_trauma_type(/datum/brain_trauma/severe/monophobia, TRAUMA_RESILIENCE_ABSOLUTE)
