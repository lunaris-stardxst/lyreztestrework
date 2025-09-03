SMODS.Joker{ --{f:5}天馬 司
    key = "tsukasatenma",
    config = {
        extra = {
            perishable = 0,
            respect = 0
        }
    },
    loc_txt = {
        ['name'] = '{f:5}天馬 司',
        ['text'] = {
            [1] = 'If {C:attention}2{} or more Kings are played',
            [2] = 'create a Perishable {C:edition}Negative{} copy',
            [3] = 'of the {C:attention}rightmost{} Joker'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 3
    },
    loc_vars = function (self, queue, card)
        queue[#queue+1] = {key = 'mktjk_tsukasatenma_name', set = 'Other'}
    end,
    cost = 12,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

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
                local target_joker = (#G.jokers.cards > 0 and G.jokers.cards[#G.jokers.cards]) or nil
                
                if target_joker then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local copied_joker = copy_card(target_joker, nil, nil, nil, nil)
                            copied_joker:set_edition("e_negative", true)
                            copied_joker:add_sticker('perishable', true)
                            copied_joker:add_sticker('eternal', false)
                            copied_joker:add_to_deck()
                            copied_joker.ability.eternal = false
                            G.jokers:emplace(copied_joker)
                            return true
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {
                        message = "WORLD FUTURE STAR!!1!!", 
                        colour = G.C.GREEN,
                        sound = 'mktjk_worldfuturestar'
                    })
                end
            end
        end
    end
}
