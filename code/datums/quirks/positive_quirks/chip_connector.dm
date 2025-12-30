/datum/quirk/chip_connector
	name = "Чип-имплант"
	desc = "В вас вживлено устройство, позволяющее вручную устанавливать и извлекать скилл-чипы! Старайтесь только не попадать под электромагнитные импульсы."
	icon = FA_ICON_PLUG
	value = 4
	gain_text = span_notice("Вы чувствуете КОННЕКТ.")
	lose_text = span_danger("Вы больше не чувствуете КОННЕКТ.")
	medical_record_text = "Пациент имеет кибернетический имплант в затылочной области, позволяющий произвольно устанавливать и извлекать скилл-чипы. Отвратительно."
	mail_goodies = list()
	var/obj/item/organ/cyberimp/brain/connector/connector

/datum/quirk/chip_connector/New()
	. = ..()
	mail_goodies = assoc_to_keys(GLOB.quirk_chipped_choice) + /datum/quirk/chipped::mail_goodies

/datum/quirk/chip_connector/add_unique(client/client_source)
	. = ..()
	var/mob/living/carbon/carbon_holder = quirk_holder
	if(!iscarbon(quirk_holder))
		return
	connector = new()
	connector.Insert(carbon_holder, special = TRUE)

/datum/quirk/chip_connector/post_add()
	to_chat(quirk_holder, span_bolddanger(desc)) // efficiency is clever laziness

/datum/quirk/chip_connector/remove()
	qdel(connector)
