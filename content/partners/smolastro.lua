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
        }
    },


    loc_txt = {
        ['name'] = 'smol astro',
        ['text'] = {
            [1] = '{C:attention}Meows{} at you.',
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    
    link_config = {j_mktjk_astro = 1},

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
            end
        if context.starting_shop  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
                return {
                    sound = play_sound('mktjk_mreow', 2.2, 1.0)
                }    
                end
        if context.after and context.cardarea == G.jokers  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.reroll_shop  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.other_joker  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.skip_blind  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.hand_drawn  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.open_booster  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.skipping_booster  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.playing_card_added  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.using_consumeable  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
        if context.ending_shop  then
                return {
                    message = "mrow!",
                    sound = 'mktjk_mreow',
                    pitch = 2.2,
                }
        end
    end
}