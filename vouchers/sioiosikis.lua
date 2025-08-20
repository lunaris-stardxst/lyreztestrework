SMODS.Voucher { --Should I Open It Or Should I Keep It Sealed
    key = 'sioiosikis',
    pos = { x = 0, y = 0 },
    loc_txt = {
        ['name'] = 'Should I Open It Or Should I Keep It Sealed',
        ['text'] = {
            'Adds {C:attention}3 Joker slots{}'
        }
    },
    cost = 6,
    unlocked = true,
    discovered = true,
    config = { 
        extra = {

        } 
    },
    atlas = 'vouchers',

    loc_vars = function(self, info_queue, card)
        return { 
            vars = {
                 
                } 
            }
    end,

    redeem = function(self, card)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.jokers.config.card_limit = G.jokers.config.card_limit + 3
                return true
            end
        }))
    end
}