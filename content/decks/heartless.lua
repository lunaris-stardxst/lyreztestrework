SMODS.Back {
    key = "heartlessdeck",
    pos = { x = 0, y = 0 },
	atlas = 'decks',
	    loc_txt = {
        name ="Heartless Deck",
        text={
            "Each {C:hearts}Heart{} in deck",
			"is replaced with a {C:diamonds}Diamond{}"
        }
		},
	config = {},
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Hearts' then
                        v:change_suit('Diamonds')
                    end
                end
                return true
            end
        }))
    end
}