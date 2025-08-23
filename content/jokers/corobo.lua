local function gcd(a, b) -- expects a and b to be Bigs
    local t
    while not b:eq(to_big(0)) do
        t = b
        b = a:mod(b)
        a = t
    end
    return a
end

SMODS.Joker{ --Corobo
    key = "corobo",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = "Corobo's Co-primes!",
        ['text'] = {
            [1] = 'Balances {C:blue}Chips{} and {C:red}Mult{} if',
            [2] = '{C:blue}Chips{} and {C:red}Mult{} are {C:attention}coprimes{}.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 2
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

    calculate = function(self, card, context)
        if context.final_scoring_step and context.cardarea == G.jokers then
                if gcd(to_big(hand_chips), to_big(mult)) == to_big(1) then
                return {balance = true}
            end
        end
    end
}