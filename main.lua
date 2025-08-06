SMODS.Atlas({
    key = "CustomJokers",
    path = "atlas.png",
    px = 71,
    py = 95,
})

SMODS.Atlas {
    key = "modicon",
    path = "modicon.png",
    px = 32,
    py = 32,
}

-- register our sound, reference string will become 'mktjk_customsound'
SMODS.Sound({
    key = "dttg", 
    path = "dttg.ogg"
})

SMODS.Sound({
    key = "fatty", 
    path = "yttaf.ogg"
})

SMODS.Sound({
    key = "golshi", 
    path = "golshi.ogg"
})

SMODS.Sound({
    key = "grievedih", 
    path = "grievedih.ogg"
})

SMODS.Sound({
    key = "music_daisuki", 
    path = "daisuki.ogg",
    select_music_track = function()
        return not (G.booster_pack_sparkles and not G.booster_pack_sparkles.REMOVED) and
            not (G.booster_pack_meteors and not G.booster_pack_meteors.REMOVED) and
            not (G.booster_pack and not G.booster_pack.REMOVED and not disable_booster_music) and
            not (G.shop and not G.shop.REMOVED) and
            G.GAME.blind and G.GAME.blind.boss and next(SMODS.find_card("j_mktjk_rentarouaijou")) and 100 or nil
    end
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

local function load_jokers_folder()
    local mod_path = SMODS.current_mod.path
    local jokers_path = mod_path .. "/jokers"
    local files = NFS.getDirectoryItemsInfo(jokers_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("jokers/" .. file_name))()
        end
    end
end

load_jokers_folder()

local cardclickref = Card.click
function Card:click()
  cardclickref(self)
  if self.config.center.key == 'j_mktjk_donttapthejoker' then SMODS.destroy_cards(self) end
end

local shatterref = SMODS.shatters
function SMODS.shatters(card)
  if card.config.center.key == 'j_mktjk_donttapthejoker' then return true end
  return shatterref(card)
end
