SMODS.Joker{ --神代 類
    key = "kamishirorui",
    config = {
        extra = {
            respect = 0
        }
    },
    loc_txt = {
        ['name'] = '{f:5}神代 類',
        ['text'] = {
            'If {C:attention}3{} or more Kings are played,',
            'create a Perishable Negative copy',
            'of the {C:attention}leftmost{} Joker'
        }
    },
    loc_vars = function (self, queue, card)
        queue[#queue+1] = {key = 'mktjk_kamishirorui_name', set = 'Other'}
    end,
    pos = {
        x = 8,
        y = 1
    },
    cost = 18,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

-- note to self. find a way to make the ruis stop mitosing. 
-- it works for now but this will eventually crash the game.
-- too bad!

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (function()
    local rankCount = 0
    for i, c in ipairs(context.full_hand) do
        if c:get_id() == 13 then
            rankCount = rankCount + 1
        end
    end
    
    return rankCount >= 3
end)() then
                local target_joker = G.jokers.cards[1] or nil
                
                if target_joker then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local copied_joker = copy_card(target_joker, nil, nil, nil, target_joker.edition and target_joker.edition.negative)
                        copied_joker:set_edition("e_negative", true)
                            copied_joker:add_sticker('perishable', true)
                            copied_joker:add_to_deck()
                            G.jokers:emplace(copied_joker)
                            return true
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {
                        message = "High Pressure Washing Machine~", 
                        colour = G.C.GREEN,
                        sound = 'mktjk_ruisilly'
                    })
                end
            end
        end
    end
}