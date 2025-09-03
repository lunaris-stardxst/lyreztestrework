Partner_API.Partner{
    key = "lilmilky",
    name = "lil' milky",
    unlocked = true,
    discovered = true,
    pos = {
        x = 1, 
        y = 0
    },
    atlas = "partners",
    config = {
        extra = {
            
        }},
    
    link_config = {j_mktjk_milky = 1},

    loc_vars = function(self, info_queue, card)
        local link_level = self:get_link_level()
        local benefits = 1
        if link_level == 1 then benefits = 2 end
        return { vars = {card.ability.extra.chips, card.ability.extra.chip_mod*benefits} }
    end,

    loc_txt = {
        ['name'] = "lil' milky",
        ['text'] = {
            'Applies a random Edition',
            'to a card when scored.',
            '',
            '{C:inactive}The smollest self-insert of all time.{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
                local options = {}
                for _, edition_info in ipairs(G.P_CENTER_POOLS.Edition) do
                    if edition_info.key ~= "e_negative" then
                        options[#options+1] = {name = edition_info.key, weight = 1}
                    end
                end
                local random_edition = poll_edition("key", nil, true, true, options)
                context.other_card:set_edition(random_edition, true)
                return {
                    message = "Card Modified!"
                }
        end
    end
}