SMODS.Joker{ --Oguri Cap
    key = "oguricap",
    config = {
        extra = {
            dollars = 50,
            odds = 20,
            dollars2 = 9690
        }
    },
    loc_vars = function(self, info_queue, card)
        local num, den = SMODS.get_probability_vars(card, 1, card.ability.extra.odds)
        return { 
            vars = { num, den, card.ability.extra.dollars, card.ability.extra.dollars2 } 
        }
    end,
    loc_txt = {
        ['name'] = 'Oguri Cap',
        ['text'] = {
            '{C:green}#1#/#2#{} chance for Oguri Cap',
            'to order {X:red,C:white}969{} 10pc bucket',
            'meals at KFC, worth #4#$, putting you',
            'into debt. Otherwise you',
            'earn {C:gold}#3#${} per round.'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    cost = 1,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.end_of_round and not context.game_over and context.main_eval then
            if SMODS.pseudorandom_probability(card, 'yourseedhere', 1, card.ability.extra.odds, 'j_mktjk_oguricap') then
                return { 
                    dollars = -card.ability.extra.dollars2,
                    extra = {
                        message = 'Fatty.',
                        sound = 'mktjk_fatty'
                    }
                }
            else
                return {
                     dollars = card.ability.extra.dollars 
            }
            end
        end
    end
}