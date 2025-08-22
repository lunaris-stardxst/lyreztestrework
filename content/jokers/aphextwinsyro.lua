SMODS.Joker{ --s950tx16wasr10 (joker mix)
    key = "aphextwinsyro",
    config = {
        extra = {
        }
    },
    loc_vars = function (self, queue, card)
        queue[#queue+1] = {key = 'mktjk_aphextwin_garbage', set = 'Other'}
    end,
    loc_txt = {
        ['name'] = 's950tx16wasr10 (joker mix)',
        ['text'] = {
            '{X:edition,C:white}what the fuck{}',
            'what do you mean this joker doesnt do anything'
        }
    },
    pos = {
        x = 7,
        y = 1
    },
    cost = 12,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers'
}