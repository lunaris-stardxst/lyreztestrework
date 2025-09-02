local main_menu_hook = Game.main_menu
function Game:main_menu(change_context)
    main_menu_hook(self, change_context)
    local scale = 2.2
    local card_area_initial = {
        h = G.CARD_H,
        w = G.CARD_W,
    }
    self.mod_title = CardArea(20, 20, card_area_initial.w, card_area_initial.h, {card_limit = 1, type = "title"})
    G.mod_title:set_alignment({
        major = G.SPLASH_LOGO,
        type = "cm",
        bond = "Strong",
        offset = {x = 0, y = -3}
    })
    local title_card = Card(self.mod_title.T.x, self.mod_title.T.y, G.CARD_W * scale * 1.39, G.CARD_H * scale * 0.2, G.P_CENTERS.j_mktjk_milkybanner, G.P_CENTERS.j_mktjk_milkybanner)
    title_card.no_ui = true
    self.mod_title:emplace(title_card)
end

SMODS.Atlas {
    key = "milkybanner",
    px = 197, -- replace with dimensions of the thing u want to use
    py = 38,
    path = "MILKY.png"
}

SMODS.Joker {
    key = "milkybanner",
    atlas = "milkybanner",
    pos = {x = 0, y = 0},
    unlocked = true,
    discovered = true,
    no_collection = true,
    loc_txt = {
        name = "",
        text = {
            ""
        }
    },
    in_pool = function(self, args)
        return false
    end
}