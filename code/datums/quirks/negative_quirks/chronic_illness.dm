/datum/quirk/item_quirk/chronic_illness
	name = "Стирающая хроническая болезнь"
	desc = "Вы страдаете от аномальной хронической болезни, требующей постоянной медикаментозной поддержки. Без неё ваше существование подвергается «коррекции временного потока»."
	icon = FA_ICON_DISEASE
	value = -12
	gain_text = span_danger("Вам кажется, будто вы растворяетесь в небытии...")
	lose_text = span_notice("Вы внезапно чувствуете себя более реальным.")
	medical_record_text = "У пациента диагностирована аномальная хроническая болезнь, требующая постоянной лекарственной терапии для поддержания стабильности."
	hardcore_value = 12
	mail_goodies = list(/obj/item/storage/pill_bottle/sansufentanyl)

/datum/quirk/item_quirk/chronic_illness/add(client/client_source)
	var/datum/disease/chronic_illness/hms = new /datum/disease/chronic_illness()
	quirk_holder.ForceContractDisease(hms)

/datum/quirk/item_quirk/chronic_illness/add_unique(client/client_source)
	give_item_to_holder(/obj/item/storage/pill_bottle/sansufentanyl, list(LOCATION_BACKPACK), flavour_text = "Вам назначили лекарства, которые помогут справиться с вашим заболеванием. Принимайте их регулярно, чтобы избежать осложнений.", notify_player = TRUE)
	give_item_to_holder(/obj/item/healthanalyzer/simple/disease, list(LOCATION_BACKPACK))
