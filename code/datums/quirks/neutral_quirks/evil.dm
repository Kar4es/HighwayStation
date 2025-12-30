/datum/quirk/evil
	name = "Абсолютное зло"
	desc = "На месте вашей души — лишь чернильная пустота. Хотя вы заботитесь о поддержании социальной репутации, \
		любой, кто заглянет слишком глубоко в ваши холодные, безразличные глаза, увидит правду. Вы — истинное зло. \
		С вами всё в порядке. Вы выбрали быть злом и преданы этому пути. Ваши амбиции стоят превыше всего."
	icon = FA_ICON_HAND_MIDDLE_FINGER
	value = 0
	mob_trait = TRAIT_EVIL
	gain_text = span_notice("Вы сбрасываете остатки своей человечности. Дело не ждет.")
	lose_text = span_notice("Вы внезапно начинаете больше заботиться о других и их нуждах.")
	medical_record_text = "Пациент блестяще прошёл все тесты на социальную адаптацию, но провалил тесты на эмпатию."
	mail_goodies = list(/obj/item/food/grown/citrus/lemon)

/datum/quirk/evil/post_add()
	var/evil_policy = get_policy("[type]") || "Помните: то, что вы являетесь [LOWER_TEXT(name)], НЕ даёт вам никакого права нападать на людей или сеять хаос."
	// We shouldn't need this, but it prevents people using it as a dumb excuse in ahelps.
	to_chat(quirk_holder, span_big(span_info(evil_policy)))
