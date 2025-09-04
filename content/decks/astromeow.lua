SMODS.Back{
    key = "astromeow",
	atlas = 'decks',
	pos = {x = 3, y = 0},
	config = {extra = {
	}},
    loc_txt = {
        name ="Astro's Deck",
        text={
            "Start with {C:attention}2{} {V:1}Eternal", 
            "{C:dark_edition,T:e_negative}Negative{} {C:attention,T:j_mktjk_astro}Astros",
        }
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {self.config.extra.winning_ante, colours = {{0.78, 0.35, 0.52, 1}}}}
	end,
    apply = function(self, back)
		G.E_MANAGER:add_event(Event({
			func = function()
				local card = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					key = 'j_mktjk_astro',
					edition = "e_negative",
					stickers = {"eternal"}
				})
                card:add_to_deck()
                G.jokers:emplace(card)
				card:set_edition({ negative = true })
				card:set_eternal(true)
				local card2 = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					key = 'j_mktjk_astro',
					edition = "e_negative",
					stickers = {"eternal"}
				})
                card2:add_to_deck()
                G.jokers:emplace(card2)
				card2:set_edition({ negative = true })
				card2:set_eternal(true)
				return true
			end
        })
		)
    end,
}