-- name: Chaos Edition
--
local CODETEST = 0
local MAXCODES = 10
local CODECOUNT = 150
local codeSelected = {
    [0] = CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST
}
local codeTimers = { [0] = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
local function codeActive(ID)
    for i = 0, MAXCODES - 1 do
        if (codeSelected[i] == ID) then
            return true
        end
    end
    return false
end

local function codeClear(ID)
    for i = 0, MAXCODES - 1 do
        if (codeSelected[i] == ID) then
            codeSelected[i] = 0
            return
        end
    end
end
--#define CODECOUNT 150
local timer = {
    -- if set to 0, it defaults to a max time of 1800 = 1 minute
    --[[000]][0] = 0,
    0,
    120,
    120,
    0,
    0,
    0,
    0,
    60,
    180,
    --[[010]] 0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    180,
    0,
    --[[020]] 200,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[030]] 300,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[040]] 0,
    30,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[050]] 30,
    120,
    0,
    0,
    0,
    0,
    300,
    0,
    0,
    0,
    --[[060]] 300,
    120,
    0,
    0,
    0,
    0,
    0,
    600,
    0,
    0,
    --[[070]] 0,
    0,
    0,
    600,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[080]] 300,
    0,
    150,
    150,
    120,
    0,
    0,
    0,
    300,
    0,
    --[[090]] 150,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[100]] 0,
    0,
    0,
    0,
    0,
    0,
    0,
    150,
    0,
    0,
    --[[110]] 0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    --[[120]] 0,
    0,
    0,
    0,
    0,
    0,
    120,
    120,
    0,
    0,
    --[[130]] 0,
    0,
    300,
    0,
    0,
    0,
    0,
    0,
    120,
    0,
    --[[140]] 0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
}
local CODELENGTH = 120
local quicktime = 0
local quicktime2 = 0
local validTypes = { SURFACE_DEFAULT,
    SURFACE_BURNING,
    SURFACE_SLOW,
    SURFACE_VERY_SLIPPERY,
    SURFACE_NOT_SLIPPERY,
    SURFACE_SHALLOW_QUICKSAND,
    SURFACE_SHALLOW_QUICKSAND,
    SURFACE_NOISE_DEFAULT,
    SURFACE_TIMER_START,
    SURFACE_TIMER_END,
    SURFACE_CAMERA_8_DIR,
    SURFACE_HORIZONTAL_WIND,
    0,
    0,
    0,
    SURFACE_DEFAULT,
    SURFACE_BURNING,
    SURFACE_SLOW,
    SURFACE_VERY_SLIPPERY,
    SURFACE_NOT_SLIPPERY,
    SURFACE_SLOW,
    SURFACE_CAMERA_8_DIR,
    SURFACE_NOISE_DEFAULT,
    SURFACE_TIMER_START,
    SURFACE_TIMER_END,
    SURFACE_CAMERA_8_DIR,
    SURFACE_HORIZONTAL_WIND,
    0,
    0,
    0 };
local newCodeTimer = 0
---@param m MarioState
function chaos_processing(m)
    -- local i
    if m.playerIndex ~= 0 then return end
    local j = 999
    local object
    local gCurrLvlNum
    gCurrLvlNum = gNetworkPlayers[0].currLevelNum
    local gMarioObject = m.marioObj
    --local DL = 0
    -- Gfx *a
    -- struct Object *object
    --  int sizecurrent = 0
    local inActSelect = cur_obj_nearest_object_with_behavior(get_behavior_from_id(id_bhvActSelector))
    if (gCurrLvlNum ~= 1) then
        --[[ if (!gMarioState.marioObj) {
        gMarioState.marioObj = 0x803ffC00 -- if no mario exists, use a spoof address. saves us
                                            -- checking for null pointers
    }]]
        for i = 0, MAXCODES - 1 do -- tick down timers for all 8 active codes. if the time runs
            -- out, it disables the code.
            if (codeTimers[i]) then
                codeTimers[i] = codeTimers[i] - 1
                if (codeTimers[i] == 0) then
                    codeSelected[i] = 0
                end
            end
        end
        newCodeTimer = newCodeTimer + 1
        if (newCodeTimer > CODELENGTH) then -- minimum wait time for a new code
            newCodeTimer = 0
            j = random_u16() % CODECOUNT    -- select a code
            -- j = 64

            i = random_u16() % MAXCODES -- select an index for the code to exist in
            -- make some codes less likely in some stages
            if (gCurrLvlNum == LEVEL_BITDW or gCurrLvlNum == LEVEL_BITFS
                    or gCurrLvlNum == LEVEL_BITS or gCurrLvlNum == LEVEL_VCUTM) then
                if (j == 111 or j == 4 or j == 47) then
                    if (random_u16() & 3) then
                        j = 0
                    end
                end
            end
            codeSelected[i] = j      -- turn on code number j
            codeTimers[i] = timer[j] -- predetermined timers for some codes
            if (codeTimers[i] == 0) then
                codeTimers[i] = 1800
            end

            if j == 5 then -- from down here is codes that do stuff only on activision
                if (gCurrLvlNum ~= LEVEL_CASTLE_GROUNDS) then
                    --sWarpDest.type = 2
                    codeClear(5)
                end
            elseif j == 7 then
                -- todo (toadface)
            elseif j == 12 then
                gLakituState.keyDanceRoll = random_u16() & 0x3fff - 0x2000
            elseif j == 26 then
                quicktime = 60
            elseif j == 32 then
                if (not inActSelect) then
                    spawn_sync_object(id_bhv1Up, E_MODEL_1UP, m.pos.x, m.pos.y, m.pos.z, nil) -----id_bhv1Down
                end
            elseif j == 36 then
                if (not inActSelect) then
                    spawn_sync_object(id_bhvStrongWindParticle, 0, m.pos.x, m.pos.y, m.pos.z, nil)
                end
            elseif j == 60 then
                -- if (!sTransitionTimer && !sDelayedWarpTimer) {
                i = random_u16() % 170
                if (i ~= 20) then
                    --level_set_transition(-1, NULL) ??
                    create_dialog_box(i)
                end
            elseif j == 95 then
                m.numLives = m.numLives - 1
                play_sound(SOUND_GENERAL2_1UP_APPEAR, gGlobalSoundSource)
            elseif j == 108 then
               -- goomba
            elseif j == 110 then
                quicktime2 = 60
            elseif j == 114 then
                set_mario_action(m, ACT_RIDING_SHELL_GROUND, 0)
            elseif j == 122 then
                if (not inActSelect) then
                    --[[ if (((Gfx *) segmented_to_virtual(scuttlebug_seg6_dl_06013988)).words.w1
                    == (u32) scuttlebug_seg6_texture_06010908) {]]
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    object.oPosX = object.oPosX + random_f32_around_zero(800)
                    object.oPosY = object.oPosY + 800
                    object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    object.oPosX = object.oPosX + random_f32_around_zero(800)
                    object.oPosY = object.oPosY + 800
                    object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    object.oPosX = object.oPosX + random_f32_around_zero(800)
                    object.oPosY = object.oPosY + 800
                    object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                end
                -- }
            end
        end

        if not codeActive(12) then
            gLakituState.keyDanceRoll = 0
        end

        if codeActive(13) then
            m.unkB0 = random_u16() % 256
        else
            m.unkB0 = 0xBD
        end

        if codeActive(20) then
            m.flags = (m.flags & (~(MARIO_NORMAL_CAP | MARIO_VANISH_CAP | MARIO_METAL_CAP | MARIO_WING_CAP)))
                | (random_u16()
                    & (MARIO_NORMAL_CAP | MARIO_VANISH_CAP | MARIO_METAL_CAP | MARIO_WING_CAP));
        end

        if codeActive(21) then
            m.health = m.health - 1
        end

        if codeActive(24) then
            if m.floor then
                if m.floor.force ~= 0x7777 then
                    if m.floor.type ~= 0x0a then
                        if m.floor.type < 0x7f then
                            m.floor.type = validTypes[random_u16() & 0x1f]
                            m.floor.force = 0x7777
                        end
                    end
                end
            end
        end

        if codeActive(69) then
            if m.floor then
                if m.floor.type ~= 0x0a then
                    if m.floor.type < 0x7f then
                        m.floor.type = 0x15
                    end
                end
            end
        end

        if codeActive(77) then
            if m.floor then
                if m.floor.type == 0x0A then
                    m.floor.type = 0
                end
            end
        end


        -- DPAD DOWN TO DIE AND OR DIE AT HUD PROCESS CODE

        if codeActive(28) then
            m.faceAngle.y = m.faceAngle.y + 0x180
        end

        if codeActive(30) then
            m.pos.x = m.pos.x - math.sin(m.faceAngle[2]) * 8
            m.pos.z = m.pos.z - math.cos(m.faceAngle[2]) * 8
        end

        if codeActive(67) then
            m.pos.x = m.pos.x + math.sin(m.faceAngle[2]) * 10
            m.pos.z = m.pos.z + math.cos(m.faceAngle[2]) * 10
        end

        if codeActive(33) then
            if m.action == ACT_IDLE then
                m.actionState = 3
            end
        end

        if codeActive(35) then
            m.marioObj.header.gfx.node.flags = m.marioObj.header.gfx.node.flags | GRAPH_RENDER_INVISIBLE
        end

        if codeActive(42) then
            -- gSequencePlayers[1].tempo = 0x200
            sequence_player_set_tempo(SEQ_PLAYER_ENV, 0x200)
        end

        if codeActive(43) then
            -- gSequencePlayers[1].tempo = 0x4000
            sequence_player_set_tempo(SEQ_PLAYER_ENV, 0x4000)
        end

        if codeActive(47) then
            if (m.controller.buttonPressed & B_BUTTON) ~= 0 then
                if not inActSelect then
                    spawn_sync_object(id_bhvFlameLargeBurningOut, E_MODEL_RED_FLAME, m.pos.x, m.pos.y, m.pos.z, nil)
                end
            end
        end

        if codeActive(49) then
            m.controller.buttonDown = m.controller.buttonDown | Z_TRIG
        end

        if codeActive(53) then
            m.angleVel.y = 0x100
        end

        if codeActive(64) then
            if (m.controller.buttonPressed & Z_TRIG) ~= 0 then
                m.hurtCounter = m.hurtCounter + (m.flags & MARIO_CAP_ON_HEAD) ~= 0 and 8 or 12;
                m.squishTimer = 30
                set_camera_shake_from_hit(SHAKE_FALL_DAMAGE)
                play_sound(SOUND_MARIO_ATTACKED, m.marioObj.header.gfx.cameraToObject)
            end
        end

        if codeActive(73) then
            if m.forwardVel < 48 then
                m.forwardVel = 48.0
            end
        end

        if codeActive(87) then
            m.flags = m.flags & ~(MARIO_ACTION_SOUND_PLAYED | MARIO_MARIO_SOUND_PLAYED);
        end

        if codeActive(142) then
            if m.floor then
                if m.floor.type >= SURFACE_SHALLOW_QUICKSAND and m.floor.type <= SURFACE_MOVING_QUICKSAND then
                    m.floor.type = SURFACE_QUICKSAND
                end
            end
        end
        
        if codeActive(150) then
            if get_global_timer() % 20 == 0 then
               -- gMovtexIdToTexture[0] = SEG_POOL_START + bit.lshift(random_u16() & 0xFF, 16) + random_u16() % ((SEG_POOL_END - SEG_POOL_START) - main_pool_available())
            end
        else
           -- gMovtexIdToTexture[0] = texture_waterbox_water
        end

        -- add processing for more codes here:
        
    end
end

function chaos_processing_hud()
    djui_hud_set_font(FONT_HUD)
    djui_hud_set_resolution(RESOLUTION_N64)
    local m = gMarioStates[0]
    if quicktime ~= 0 then
        quicktime = quicktime - 1
        djui_hud_print_text("PRESS DPAD DOWN OR DIE", 40, 60, 1)
        if quicktime == 0 then
            m.health = 0
        end
        if m.controller.buttonPressed & D_JPAD ~= 0 then
            quicktime = 0
            play_sound(SOUND_GENERAL2_RIGHT_ANSWER, gGlobalSoundSource)
        end
    end

    if quicktime2 ~= 0 then
        quicktime2 = quicktime2 - 1
        djui_hud_print_text("PRESS DPAD DOWN TO DIE", 40, 60, 1)
        if m.controller.buttonPressed & D_JPAD ~= 0 then
            quicktime2 = 0
            m.health = 0
        end
    end
end

function debug_codes()
    djui_hud_set_font(FONT_HUD)
    djui_hud_set_resolution(RESOLUTION_N64)
    --debug
    for i = 0, 9 do
        djui_hud_print_text("Code " .. i .. ": " .. codeSelected[i], 0, 0 + i * 24, 1)
    end
    -- texture_override_set("tree_seg3_texture_0302DE28", gTextures.mario_head)
end

hook_event(HOOK_MARIO_UPDATE, chaos_processing)
hook_event(HOOK_ON_HUD_RENDER_BEHIND, chaos_processing_hud)
hook_event(HOOK_ON_HUD_RENDER, debug_codes)
