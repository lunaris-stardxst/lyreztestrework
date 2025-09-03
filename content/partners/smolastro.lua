Partner_API.Partner{
    key = "smolastro",
    name = "smol astro",
    unlocked = true,
    discovered = true,
    pos = {
        x = 2, 
        y = 0
    },
    atlas = "partners",
    config = {
        extra = {
            chipsadd = 1,
            echips = 2
        }
    },

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chipsadd}}
    end,

    loc_txt = {
        ['name'] = 'smol astro',
        ['text'] = {
            [1] = '{C:attention}Meows{} and gives you',
            [2] = '{C:blue}Chips{} for every time a card',
            [3] = 'is scored. Increases chip',
            [4] = 'amount every round.',
            [5] = '{C:inactive,s:0.8}(Currently +#1# Chips){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    
    link_config = {j_mktjk_astro = 1},

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
                return {
                    chips = card.ability.extra.chipsadd,
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
            end
        if context.starting_shop  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
                return {
                    sound = play_sound('mktjk_mreow', 1.0, 1.0),
                    extra = {
                        func = function()
                    card.ability.extra.chipsadd = (card.ability.extra.chipsadd) + 1
                    return true
                end,
                        colour = G.C.GREEN
                        }
                }
        end
        if context.after and context.cardarea == G.jokers  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.reroll_shop  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.other_joker  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.skip_blind  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.hand_drawn  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.discard  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.open_booster  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.skipping_booster  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.playing_card_added  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.using_consumeable  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
        if context.ending_shop  then
                return {
                    sound = 'mktjk_mreow',
                    pitch = 1.0,
                }
        end
    end
}