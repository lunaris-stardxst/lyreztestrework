SMODS.Back{
    key = "ruikasa",
	atlas = 'decks',
	pos = {x = 4, y = 0},
	config = {extra = {
	}},
    loc_txt = {
        name ="Ruikasa Deck",
        text={
            "Start with an Eternal", 
            "Negative {f:5}天馬 司{} and",
			"an Eternal Negative {f:5}神代 類{}"
        }
	},
	loc_vars = function(self,info_queue,card)
		return {vars = {self.config.extra.winning_ante}}
	end,
    apply = function(self, back)
		G.E_MANAGER:add_event(Event({
			func = function()
				local card = SMODS.create_card({
					set = 'Joker',
					area = G.jokers,
					key = 'j_mktjk_kamishirorui',
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
					key = 'j_mktjk_tsukasatenma',
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