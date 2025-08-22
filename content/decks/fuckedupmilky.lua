SMODS.Back {
    key = "fuckedupmilky",
    pos = { x = 1, y = 0 },
	atlas = 'decks',
	    loc_txt = {
        name ="Fucked Up MiLKY Deck",
        text={
            "Start with a {C:spectral}Cryptid{}",
            "and the MiLKY-P Joker.",
        }
		},
    config = { 
        consumables = { 'c_cryptid' },
        jokers = {'j_mktjk_milky'},
    },
    loc_vars = function(self, info_queue, back)
        return { 
            
        }
    end,
}
