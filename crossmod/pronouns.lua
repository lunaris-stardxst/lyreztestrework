if CardPronouns then

CardPronouns.PronounClassification {
    key = "notpronouns",
    pronouns = { "Himejoshi", "Himedanshi", "Himejin", "tbh", "Autism", "fatty", "tabachoy", "pingue", "je'duh", "gorduroso", "gras", "fett", "graso",  }
}

CardPronouns.PronounClassification {
    key = "neopronouns",
    pronouns = { "Xhey",  }
}


CardPronouns.Pronoun {
    colour = HEX("96ff2e"),
    text_colour = HEX("000000"),
    pronoun_table = { "She", "They", "Xhey" },
    in_pool = function()
        return false
    end,
    key = "she_theyxhey"
}

CardPronouns.Pronoun {
    colour = HEX("4681a6"),
    text_colour = G.C.WHITE,
    pronoun_table = { "Fujoshi", "Fudanshi", "Fujin" },
    in_pool = function()
        return true
    end,
    key = "yaoi"
}

CardPronouns.Pronoun {
    colour = HEX("7f46a6"),
    text_colour = G.C.WHITE,
    pronoun_table = { "Himejoshi", "Himedanshi", "Himejin" },
    in_pool = function()
        return true
    end,
    key = "yuri"
}

CardPronouns.Pronoun {
    colour = G.C.WHITE,
    text_colour = HEX("000000"),
    pronoun_table = { "tbh", "Autism" },
    in_pool = function()
        return false
    end,
    key = "autism"
}

CardPronouns.Pronoun {
    colour = HEX("000000"),
    text_colour = G.C.WHITE,
    pronoun_table = { "fatty", "tabachoy", "pingue", "je'duh", "gorduroso", "gras", "fett", "graso" },
    in_pool = function()
        return false
    end,
    key = "fatty"
}

end