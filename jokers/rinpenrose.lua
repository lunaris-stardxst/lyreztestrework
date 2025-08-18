SMODS.Joker{ --Rin Penrose And The Balatro Polycule
    key = "rinpenrose",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Rin Penrose And The Balatro Polycule',
        ['text'] = {
            'Adds {C:attention}5 Joker slots{}'
        }
    },
    pos = {
        x = 7,
        y = 0
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    add_to_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit + 5
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - 5
    end
}