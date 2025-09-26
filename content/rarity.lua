SMODS.Rarity { --WAIT THRES ALREADY A RARITY LUA FUUCCKK
    key = "jimmy",
    default_weight = 0.25,
    badge_colour = HEX("7f7fb1"),
    loc_txt = {
        name = "JIMMY"
    },
    get_weight = function(self, weight, object_type)
        return weight --jmimy
    end,
}
SMODS.Rarity {
    key = "pseudolegend",
    default_weight = 0,
    badge_colour = HEX("a954b6"),
    loc_txt = {
        name = "Pseudo-Legendary"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.Rarity {
    key = "legendplus",
    default_weight = 0,
    badge_colour = HEX("b500ff"),
    loc_txt = {
        name = "Legendary+"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
