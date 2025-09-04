SMODS.Joker {
    key = "stellesteelbrooke",
    atlas = "jokers", -- add atlas here
    pos = {x = 5, y = 3}, -- fix pos
    config = {extra = {xmult = 2, xmult_gain = 0.5}},
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        table.insert(info_queue, G.P_CENTERS.m_steel)
        return {vars = {card.ability.extra.xmult, card.ability.extra.xmult_gain}}
    end,
    loc_txt = {
        name = "Stelle Steelbrooke",
        text = {
            "Played cards give",
            "{X:mult,C:white}X#1#{} Mult when scored",
            "Increases by {X:mult,C:white}X#2#{}",
            "when a {C:attention}Steel{}",
            "card is scored"
        }
    },
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.blueprint and SMODS.has_enhancement(context.other_card, "m_steel") then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = "xmult",
                    scalar_value = "xmult_gain",
                })
            end
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end,
}
