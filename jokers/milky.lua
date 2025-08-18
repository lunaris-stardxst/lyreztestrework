SMODS.Joker{ --MiLKY-P
    key = "milky",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'MiLKY-P',
        ['text'] = {
            'Applies a random',
            'Effect, {C:dark_edition}Edition{} and Seal',
            'to a card when played.',
            'Adds {C:attention}+1{} Joker slot.',
            '',
            '{C:inactive}The self-insert of all time.{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 2
    },
    soul_pos = {x = 2, y = 2, draw=function (card, scale_mod, rotate_mod)
        if card.children.floating_sprite then
            card.children.floating_sprite.T.w = 1.4
            rotate_mod = -G.TIMERS.REAL * 0.635
            local sc = 0
            local xm = 0
            local ym = (-0.15 * (math.sin(G.TIMERS.REAL)/2)) - 0.355
            card.children.floating_sprite:draw_shader('dissolve', 0, nil,nil,card.children.center,sc, rotate_mod,xm,ym+0.2,nil, 0.6)
            card.children.floating_sprite:draw_shader('dissolve', nil, nil,nil,card.children.center,sc, rotate_mod,xm,ym,nil, 0.6)
        end
    end},
    cost = 39,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
                local enhancement_pool = {}
                for _, enhancement in pairs(G.P_CENTER_POOLS.Enhanced) do
                    if enhancement.key ~= 'm_stone' then
                        enhancement_pool[#enhancement_pool + 1] = enhancement
                    end
                end
                local random_enhancement = pseudorandom_element(enhancement_pool, 'edit_card_enhancement')
                context.other_card:set_ability(random_enhancement)
                local random_seal = SMODS.poll_seal({mod = 10})
                if random_seal then
                    context.other_card:set_seal(random_seal, true)
                end
                local random_edition = poll_edition('edit_card_edition', nil, true, true)
                if random_edition then
                    context.other_card:set_edition(random_edition, true)
                end
                return {
                    message = "Card Modified!"
                }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit + 1
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - 1
    end
}