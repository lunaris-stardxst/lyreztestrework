SMODS.Rarity {
    key = "useless",
    default_weight = 0.5,
    badge_colour = HEX("7f7fb1"),
    loc_txt = {
        name = "Useless"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
