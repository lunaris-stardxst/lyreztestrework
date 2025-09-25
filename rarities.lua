SMODS.Rarity {
    key = "epic",
    pools = {
        ["milkys_jokers"] = true
    },
    default_weight = 0.024,
    badge_colour = HEX('f1824a'),
    loc_txt = {
        name = "Epic"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "meta",
    pools = { 
        ["milkys_jokers"] = true 
    },
    default_weight = 0,
    badge_colour = HEX('e873ff'),
    loc_txt = {
        name = "Meta"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}