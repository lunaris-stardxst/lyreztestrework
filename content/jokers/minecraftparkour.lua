SMODS.Joker{ --Minecraft Parkour
    key = "mcparkour",
    config = {
        extra = {
            multvar = 2,
            Xmult_min = 2,
            Xmult_max = 4
        }
    },
    loc_txt = {
        ['name'] = 'Minecraft Parkour',
        ['text'] = {
            [1] = 'This Joker gives {X:red,C:white}2-4x{} Mult'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'mcparkour',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = pseudorandom('Xmult_681564cc', card.ability.extra.Xmult_min, card.ability.extra.Xmult_max)
                }
        end
    end
}