SMODS.Joker{ --Miss Kobayashi:
    key = "kobayashi",
    config = {
        extra = {
            discount_amount = 1
        }
    },
    loc_txt = {
        ['name'] = 'Miss Kobayashi',
        ['text'] = {
            'All {C:attention}Jokers{} in shop',
            'are {C:green}free{}'
        }
    },
    pos = {
        x = 9,
        y = 0
    },
    pronouns = "she_her",
    cost = 12,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'jokers',

    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
    func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true
    end
}))
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
    func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true
    end
}))
    end
} 
      
local card_set_cost_ref = Card.set_cost
function Card:set_cost()
    card_set_cost_ref(self)
    
    if next(SMODS.find_card("j_mktjk_kobayashi")) then
        if self.ability.set == 'Joker' then self.cost = 0 end
    end
    
    self.sell_cost = math.max(1, math.floor(self.cost / 2)) + (self.ability.extra_value or 0)
    self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
end