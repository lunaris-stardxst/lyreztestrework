SMODS.Joker{ -- s950tx16wasr10 (joker mix)
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
            '{X:dark_edition,C:white}what the fuck{}',
            'what do you mean this joker doesnt do anything'
        }
    },
    pos = {
        x = 7,
        y = 1
    },
    pronouns = "it_its",
    cost = 12,
    rarity = next(SMODS.find_mod("cryptposting")) and "crp_trash" or 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers'
}