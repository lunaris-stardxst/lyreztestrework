SMODS.Joker{ --The Apparition
    key = "theapparition",
    config = {
        extra = {
            mult = 1,
            inc = 0.5
        }
    },
    loc_txt = {
        ['name'] = 'The Apparition',
        ['text'] = {
            [1] = 'Gains #2#x Mult for every',
            [2] = '{C:spectral}Spectral{} Card used in run.',
            [3] = '{C:inactive}(Currently #1#x Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult, card.ability.extra.inc}}
    end,

    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Spectral' then
            card.ability.extra.mult = (card.ability.extra.mult) + card.ability.extra.inc
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.mult
                }
        end
    end
}