SMODS.Joker{ --Instant Photochad
    key = "instantphotochad",
    config = {
        extra = {
            xtwomult = 2
        }
    },
    loc_txt = {
        ['name'] = 'Instant Photochad',
        ['text'] = {
            [1] = 'Retrigger {C:orange}first{} played card used',
            [2] = 'in scoring {C:orange}#1#{} additional times',
            [3] = 'and give {X:red,C:white}X#1#{} Mult when scored.'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 0,
        y = 5
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    pronouns = "it_its",
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',
    pools = { 
        ["milkys_jokers"] = true 
    },


    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.xtwomult}}
    end,

    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[1] then
                return {
                    repetitions = card.ability.extra.xtwomult,
                    message = localize('k_again_ex')
                }
            end
        end
        if context.individual and context.cardarea == G.play  then
            if (context.other_card == context.scoring_hand[1] and context.other_card:is_face()) then
                return {
                    Xmult = card.ability.extra.xtwomult
                }
            end
        end
    end
}