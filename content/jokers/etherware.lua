SMODS.Joker{ --Ether the Slime
    key = "etherware",
    config = {
        extra = {
            slime_mult = 1
        }
    },
    loc_txt = {
        ['name'] = 'Ether the Slime',
        ['text'] = {
            [1] = 'Destroys all unscored',
            [2] = 'cards and gains {X:red,C:white}0.1X{} Mult',
            [3] = 'for every card destroyed',
            [4] = '{C:inactive}(Currently {}{X:red,C:white}X#1#{} {C:inactive}Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 5
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',
    pools = { ["milkys_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.slime_mult}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.slime_mult
                }
        end
    end
}