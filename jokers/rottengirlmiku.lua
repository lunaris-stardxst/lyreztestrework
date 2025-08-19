SMODS.Joker{ --Rotten Girl Miku
    key = "rottengirlmiku",
    config = {
        extra = {
            yaoimeter = 2,
            yaoincrement = 2
        }
    },
    loc_vars = function(self, queue, card) return {
        vars = {
            card.ability.extra.yaoimeter,
            card.ability.extra.yaoincrement
        }
    } end,
    loc_txt = {
        ['name'] = 'Rotten Girl Miku',
        ['text'] = {
            [1] = 'Gains {X:red,C:white}X#2#{} Mult when hand contains',
            [2] = '{C:attention}at least 2 Kings{}. Applies Mult on each',
            [3] = 'scored hand. {C:inactive}(Currently X#1# Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 2
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    in_pool = function(self, args)
          return (
          not args 
            
          or args.source == 'sho' or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end
    ,

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.yaoimeter, card.ability.extra.yaoincrement}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (function()
    local rankCount = 0
    for i, c in ipairs(context.full_hand) do
        if c:get_id() == 13 then
            rankCount = rankCount + 1
        end
    end
    
    return rankCount >= 2
end)() then
                card.ability.extra.yaoimeter = (card.ability.extra.yaoimeter) + card.ability.extra.yaoincrement
            else
                return {
                    Xmult = card.ability.extra.yaoimeter
                }
            end
        end
    end
}