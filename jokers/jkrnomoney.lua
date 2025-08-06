SMODS.Joker{ --jokerno$
    key = "jkrnomoney",
    config = {
        extra = {
            money_mult = 1.5
        }
    },
    loc_vars = function(self, queue, card) return {
        vars = {
            card.ability.extra.money_mult,
            card.ability.extra.money_mult*math.floor(G.GAME.dollars)
        }
    } end,
    loc_txt = {
        ['name'] = 'jokerno$',
        ['text'] = {
            [1] = '{C:red}+#1#{} Mult for every {C:money}$1{} you have',
            [2] = '{C:inactive}(Currently +#2# Mult){}'
        }
    },
    pos = {
        x = 3,
        y = 1
    },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.joker_main then
                return {xmult = card.ability.extra.money_mult * math.floor(G.GAME.dollars)}
        end
    end
}