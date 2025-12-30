/datum/quirk/item_quirk/immunodeficiency
	name = "Иммунодефицит"
	desc = "Будь то хроническая болезнь или генетический сбой, ваше тело — круглосуточный санаторий для бактерий, вирусов и прочих паразитов. Даже с прописанными иммуностимуляторами вы болеете чаще и тяжелее других"
	icon = FA_ICON_MASK_FACE
	value = -10
	mob_trait = TRAIT_IMMUNODEFICIENCY
	gain_text = span_danger("Одна мысль о микробах вызывает у вас озноб.")
	lose_text = span_notice("Ваша иммунная система чудесным образом укрепляется.")
	medical_record_text = "Пациент обладает хроническим иммунодефицитом."
	mail_goodies = list(
		/obj/item/reagent_containers/syringe/antiviral,
		/obj/item/healthanalyzer/simple/disease
	)

/datum/quirk/item_quirk/immunodeficiency/add_unique(client/client_source)
	give_item_to_holder(
		/obj/item/clothing/mask/surgical,
		list(
			LOCATION_MASK,
			LOCATION_BACKPACK,
			LOCATION_HANDS,
		)
	)
	give_item_to_holder(
		/obj/item/storage/pill_bottle/immunodeficiency,
		list(
			LOCATION_LPOCKET,
			LOCATION_RPOCKET,
			LOCATION_BACKPACK,
			LOCATION_HANDS,
		)
	)
