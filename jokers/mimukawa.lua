SMODS.Joker{ --Mimukawa Nice Try
    key = "mimukawa",
    config = {
        extra = {
            mult = 33
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { card.ability.extra.mult } 
        }
    end,
    loc_txt = {
        ['name'] = 'Mimukawa Nice Try',
        ['text'] = {
            [1] = 'Adds {C:red}#1#{} Mult when 4',
            [2] = 'cards are played.'
        }
    },
    pos = {
        x = 4,
        y = 0
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if #context.scoring_hand == 4 then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}