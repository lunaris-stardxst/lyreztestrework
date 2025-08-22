SMODS.Joker{ --ROT FOR CLOUT
    key = "rotforclout",
    config = {
        extra = {
            multforclout = 1,
            sell_value = 2
        }
    },
    loc_txt = {
        ['name'] = 'ROT FOR CLOUT',
        ['text'] = { -- fixed formatting and colors
            [1] = 'Sell value goes down',
            [2] = 'every round but adds',
            [3] = '{X:mult,C:white}X0.5{} Mult for {C:attention}every round{}',
            [4] = 'this card is held in hand.',
            [5] = '{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 2
    },
    cost = 12,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.multforclout}}
    end,
    add_to_deck = function (self, card, from_debuff) -- this does something when the joker is obtained
        if not from_debuff then
            card.ability.extra_value = 6 -- needed so that the sell value is correct when obtained
        end
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then -- added blueprint check to make sure that the cost change isnt triggered by copy effects
            if card.ability.extra.multforclout < 4 then -- removed some clutter while ensuring that multforclout does not exceed 4
                -- changed 0 to -6 because thats the minimum that card.ability.extra_value should be
                card.ability.extra_value = math.max(-6, (card.ability.extra_value or 0) - card.ability.extra.sell_value) -- moved outside func
                card:set_cost()
                card.ability.extra.multforclout = card.ability.extra.multforclout + 0.5
                return {
                    message = "-"..tostring(card.ability.extra.sell_value).." Sell Value",
                    colour = G.C.GREEN, -- moved outside extra
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.multforclout
                }
        end
    end
}