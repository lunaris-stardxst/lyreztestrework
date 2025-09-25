SMODS.Rarity {
    key = "jimmy",
    default_weight = 0.25,
    badge_colour = HEX("7f7fb1"),
    loc_txt = {
        name = "JIMMY"
    },
    get_weight = function(self, weight, object_type)
        return weight --why the fuck is this jimmy
    end,
}
SMODS.Rarity {
    key = "pseudolegend",
    default_weight = 0,
    badge_colour = HEX("000000"),
    loc_txt = {
        name = "Pseudo-Legendary"
    },
    get_weight = function(self, weight, object_type)
        return weight --needs colour
    end,
}
SMODS.Rarity {
    key = "legendplus",
    default_weight = 0,
    badge_colour = HEX("000000"),
    loc_txt = {
        name = "Legendary+"
    },
    get_weight = function(self, weight, object_type)
        return weight --needs colour
    end,
}
