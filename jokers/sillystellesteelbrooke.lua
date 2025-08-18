SMODS.Joker{ --Silly Stelle Steelbrooke
    key = "sillystelle",
    config = {
        extra = {
            xmultvar = 1,
            xmultadd = 0.1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { card.ability.extra.xmultvar, card.ability.extra.xmultadd } 
        }
    end,
    loc_txt = {
        ['name'] = 'Silly Stelle Steelbrooke',
        ['text'] = {
            'This Joker gains {X:red,C:white}X#2#{} Mult per',
            '{C:attention}consecutive{} card played',
            '{C:inactive}(Currently {X:red,C:white}X#1#{} {C:inactive}Mult){}'
        }
    },
    pos = {
        x = 2,
        y = 1
    },
    cost = 10,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
                card.ability.extra.xmultvar = (card.ability.extra.xmultvar) + (card.ability.extra.xmultadd)
                return {
                    Xmult = card.ability.extra.xmultvar
                }
        end
    end
}