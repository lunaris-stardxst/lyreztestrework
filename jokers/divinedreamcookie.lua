SMODS.Joker{ --Divine Dream Cookie
    key = "divinedreamcookie",
    config = {
        extra = {
            xmultvar = 1
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { card.ability.extra.xmultvar } 
        }
    end,
    loc_txt = {
        ['name'] = 'Divine Dream Cookie',
        ['text'] = {
            [1] = 'This Joker gains {X:red,C:white}X0.5{} Mult for',
            [2] = 'every {C:orange}Queen{} discarded this round',
            [3] = '{C:inactive}(Currently{} {X:red,C:white}x#1#{}{C:inactive}Mult){}',
            [4] = '',
            [5] = '{C:inactive,s:0.8}art by {X:edition,C:spades}HATTOYUME{}{}'
        }
    },
    pos = {
        x = 0,
        y = 1
    },
    cost = 8,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.discard  then
            if (function()
    local rankFound = false
    for i, c in ipairs(context.full_hand) do
        if c:get_id() == 12 then
            rankFound = true
            break
        end
    end
    
    return rankFound
end)() then
                return {
                    func = function()
                    card.ability.extra.xmultvar = (card.ability.extra.xmultvar) + 0.5
                    return true
                end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.xmultvar
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
                return {
                    func = function()
                    card.ability.extra.xmultvar = 1
                    return true
                end
                }
        end
    end
}