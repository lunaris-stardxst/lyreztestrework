SMODS.Back {
    key = "oopsallaces",
    pos = { x = 2, y = 0 },
    atlas = 'decks',
    loc_txt = {
        name = "'Oops All Aces!' Deck",
        text = {
            "Every card in the deck is",
            "an Ace."
        }
    },
    config = {aces = 'Ace'},

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                for _, card in ipairs(G.playing_cards) do
                    assert(SMODS.change_base(card, nil, self.config.aces))
                end
                return true
            end
        }))
    end
}



