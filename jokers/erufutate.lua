SMODS.Joker{ --Eru Futate
    key = "erufutate",
    config = {
        extra = {
            Xmult = 22
        }
    },
    loc_txt = {
        ['name'] = 'Eru Futate',
        ['text'] = {
            '{X:red,C:white}X22{} Mult if played hand contains a {C:orange}Pair{}'
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    cost = 22,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "Pair" then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}