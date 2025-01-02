-- name: SM64 Chaos Edition
-- pausable: false

local CODETEST = 0
gGlobalSyncTable.MAXCODES = 20
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
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,
    CODETEST,

}
local codeTimers = { [0] = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
local function codeActive(ID)
    for i = 0, gGlobalSyncTable.MAXCODES - 1 do
        if (codeSelected[i] == ID) then
            return true
        end
    end
    return false
end

local function codeClear(ID)
    for i = 0, gGlobalSyncTable.MAXCODES - 1 do
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
local CODELENGTH = 10
local quicktime = 0
local quicktime2 = 0
local validTypes = {
    SURFACE_DEFAULT,
    [0] = SURFACE_BURNING,
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
};
local toadface = get_texture_info("releasio")
local newCodeTimer = 0
local camTimer = 0
local function for_each_obj(func)
    for i = OBJ_LIST_PLAYER, NUM_OBJ_LISTS - 1 do
        local objF = obj_get_first(i)

        while objF do
            if objF.behavior ~= get_behavior_from_id(id_bhvStaticObject) then
                func(objF)
            end
            objF = obj_get_next(objF)
        end
    end
end

local function for_each_object_with_behavior(behavior, func) --* function by Isaac
    local o = obj_get_first_with_behavior_id(behavior)
    if not o then return end
    while o do
        func(o)
        o = obj_get_next_with_same_behavior_id(o)
    end
end

local function chaos_code_obj_all_behaviorscriptc(obj)
    local gCurrentObject = obj
    local gMarioObject = gMarioStates[0].marioObj
    if codeActive(9) then
        if gMarioObject then
            local x = gMarioObject.oPosX - gCurrentObject.oPosX
            local y = gMarioObject.oPosY - gCurrentObject.oPosY
            local z = gMarioObject.oPosZ - gCurrentObject.oPosZ
            if math.sqrt(x * x + y * y + z * z) > 1.0 then
                if gCurrentObject.header.gfx.sharedChild then
                    local distance = math.sqrt(x * x + y * y + z * z)
                    local xt = x / distance * 10.0
                    local yt = y / distance * 10.0
                    local zt = z / distance * 10.0
                    gCurrentObject.oPosX = gCurrentObject.oPosX + xt
                    gCurrentObject.oPosY = gCurrentObject.oPosY + yt
                    gCurrentObject.oPosZ = gCurrentObject.oPosZ + zt
                end
            end
        end
    end

    if codeActive(41) then
        gCurrentObject.oFaceAnglePitch = gCurrentObject.oFaceAnglePitch + math.floor(gCurrentObject.oPosX / 10.0)
        gCurrentObject.oFaceAngleYaw = gCurrentObject.oFaceAngleYaw + math.floor(gCurrentObject.oPosX / 10.0)
        gCurrentObject.oMoveAngleYaw = gCurrentObject.oMoveAngleYaw + math.floor(gCurrentObject.oPosX / 10.0)
        gCurrentObject.oFaceAngleRoll = gCurrentObject.oFaceAngleRoll + math.floor(gCurrentObject.oPosX / 10.0)
    end

    if codeActive(88) then
        if (random_u16() & 0x1f) == 0 then
            gCurrentObject.header.gfx.scale.x = gCurrentObject.header.gfx.scale.x * (random_float() * 2)
            gCurrentObject.header.gfx.scale.y = gCurrentObject.header.gfx.scale.y * (random_float() * 2)
            gCurrentObject.header.gfx.scale.z = gCurrentObject.header.gfx.scale.z * (random_float() * 2)
        end
    end

    if codeActive(96) then
        gCurrentObject.header.gfx.node.flags = gCurrentObject.header.gfx.node.flags | GRAPH_RENDER_BILLBOARD
    end
end

local dumbTimer = 0;
local function chaos_code_obj_all_surface_loadc(obj)
    local gCurrentObject = obj
    if obj.collisionData ~= nil then
        if (codeActive(135)) then
            gCurrentObject.oPosY = gCurrentObject.oPosY + sins(dumbTimer) * 8;
            dumbTimer = dumbTimer + 0x80;
        end

        if (codeActive(139)) then
            gCurrentObject.oFaceAngleYaw = gCurrentObject.oFaceAngleYaw + 0x30;
            gCurrentObject.oMoveAngleYaw = gCurrentObject.oFaceAngleYaw + 0x30;
        end
    end
end
local starspawnedloop = function(g)
    if (codeActive(16)) then
        local currentLevelStarFlags = save_file_get_star_flags(get_current_save_file_num() - 1,
            gNetworkPlayers[0].currCourseNum - 1);
        if (currentLevelStarFlags & (1 << ((g.oBehParams >> 24) & 0xff)) ~= 0) then
            obj_set_model_extended(g, E_MODEL_STAR);
        else
            obj_set_model_extended(g, E_MODEL_TRANSPARENT_STAR);
        end
    end
end

local settextotoad = {
    "generic_09005800", "generic_09009000", "generic_09009800", "generic_09004800",
}
---@param m MarioState
local function chaos_processing(m)
    -- local i
    if m.playerIndex ~= 0 then return end
    math.randomseed(math.random(math.random(3274762, 92382737472)), math.random(80002, 9000004027))
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
        --[[ if (!gMarioState.marioObj) then
        gMarioState.marioObj = 0x803ffC00 -- if no mario exists, use a spoof address. saves us
                                            -- checking for null pointers
    }]]
        for i = 0, gGlobalSyncTable.MAXCODES - 1 do -- tick down timers for all 8 active codes. if the time runs
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
            --j = 38

            i = random_u16() % gGlobalSyncTable.MAXCODES -- select an index for the code to exist in
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
                for texi = 1, #settextotoad do
                    texture_override_set(settextotoad[texi], toadface)
                end
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
                -- if (!sTransitionTimer && !sDelayedWarpTimer) then
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
                    == (u32) scuttlebug_seg6_texture_06010908) then]]
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    if object then
                        object.oPosX = object.oPosX + random_f32_around_zero(800)
                        object.oPosY = object.oPosY + 800
                        object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                    end
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    if object then
                        object.oPosX = object.oPosX + random_f32_around_zero(800)
                        object.oPosY = object.oPosY + 800
                        object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                    end
                    object =
                        spawn_sync_object(id_bhvScuttlebug, E_MODEL_SCUTTLEBUG, m.pos.x, m.pos.y, m.pos.z, nil)
                    if object then
                        object.oPosX = object.oPosX + random_f32_around_zero(800)
                        object.oPosY = object.oPosY + 800
                        object.oPosZ = object.oPosZ + random_f32_around_zero(800)
                    end
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
                            m.floor.type = validTypes[math.random(0, #validTypes)]
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
            m.pos.x = m.pos.x - math.sin(m.faceAngle.y) * 8
            m.pos.z = m.pos.z - math.cos(m.faceAngle.y) * 8
        end

        if codeActive(67) then
            m.pos.x = m.pos.x + math.sin(m.faceAngle.y) * 10
            m.pos.z = m.pos.z + math.cos(m.faceAngle.y) * 10
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
            -- gSequencePlayers[0].tempo = 0x200
            sequence_player_set_tempo(SEQ_PLAYER_LEVEL, 0x200)
        end

        if codeActive(43) then
            -- gSequencePlayers[0].tempo = 0x4000
            sequence_player_set_tempo(SEQ_PLAYER_LEVEL, 0x4000)
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


        --load, playback.c, not possible
        if (codeActive(104)) then
            --sequence_player_set_tempo(SEQ_PLAYER_SFX, 0x9000)
        end

        --behavior_script.c
        for_each_obj(chaos_code_obj_all_behaviorscriptc)

        --surface collision.c: not possible

        --surface_load.c

        for_each_obj(chaos_code_obj_all_surface_loadc)

        --- camera.c

        if (codeActive(84)) then
            gLakituState.shakeMagnitude.x = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeMagnitude.y = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeMagnitude.z = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakePitchDecay = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakePitchPhase = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakePitchVel = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeRollDecay = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeRollPhase = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeRollVel = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeYawDecay = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeYawPhase = random_u16() & 0x1fff - 0x1000;
            gLakituState.shakeYawVel = random_u16() & 0x1fff - 0x1000;
        end

        if (codeActive(82)) then
            if (gCamera.cutscene == 0) then
                camera_freeze()
            end
        else
            camera_unfreeze()
        end

        --game_init.c

        --[[if (codeActive(45)) then
            if (m.controller.stickX < -60) then
                m.controller.stickX = -80;
            elseif (m.controller.stickX < -20) then
                m.controller.stickX = -40;
            elseif (m.controller.stickX < 20) then
                m.controller.stickX = 0;
            elseif (m.controller.stickX < 60) then
                m.controller.stickX = 40;
            else
                m.controller.stickX = 80;
            end


            if (m.controller.stickY < -60) then
                m.controller.stickY = -80;
            elseif (m.controller.stickY < -20) then
                m.controller.stickY = -40;
            elseif (m.controller.stickY < 20) then
                m.controller.stickY = 0;
            elseif (m.controller.stickY < 60) then
                m.controller.stickY = 40;
            else
                m.controller.stickY = 80;
            end
        end]]

        if (codeActive(61)) then
            if (m.numCoins & 1) == 0 then
                m.controller.rawStickX = m.controller.rawStickX * -1;
                m.controller.rawStickY = m.controller.rawStickY * -1;
            end
        end

        if (codeActive(50)) then
            m.controller.buttonPressed = m.controller.buttonPressed | START_BUTTON;
        end

        if (codeActive(51)) then
            camTimer = camTimer + 1
            if (camTimer > 15) then
                camTimer = 0;
                m.controller.buttonPressed = m.controller.buttonPressed | (random_u16() & (C_BUTTONS | R_TRIG));
            end
        end

        --ingame menu.c not possible

        -- interaction.c

        if (codeActive(19)) then
            m.vel.y = m.vel.y * 8.0;
        end

        if (codeActive(115)) then
            gServerSettings.stayInLevelAfterStar = 1
        else
            gServerSettings.stayInLevelAfterStar = 0
        end

        if (codeActive(123)) then
            if m.heldObj then
                mario_stop_riding_and_holding(m);
                -- o->oInteractStatus = INT_STATUS_INTERACTED | INT_STATUS_GRABBED_MARIO;

                --  m.faceAngle.y = o->oMoveAngleYaw;
                -- m->interactObj = o;
                -- m->usedObj = o;

                update_mario_sound_and_camera(m);
                play_character_sound(m, CHAR_SOUND_OOOF)
                set_mario_action(m, ACT_THROWN_FORWARD, 0);
            end
        end

        --level_update.c

        if (codeActive(118)) then
            if (random_u16() < 0x9000) then
                hud_set_value(HUD_DISPLAY_TIMER, hud_get_value(HUD_DISPLAY_TIMER) + 1)
            end
        end

        if (codeActive(62)) then
            if is_game_paused() then
                if (m.health >= 0x100) then
                    m.health = m.health - 0x40;
                    m.hurtCounter = 0xFF;
                    -- gHudDisplay.wedges = gMarioState->health > 0 ? gMarioState->health >> 8 : 0;
                end
            end
        end

        -- mario actions airborne

        if (codeActive(14)) then
            if m.action == ACT_LONG_JUMP then
                if (m.forwardVel < 0.0) then
                    m.forwardVel = -65536. * 4.0;
                end
            end
        end

        if (codeActive(86)) then
            if m.action == ACT_FLYING_TRIPLE_JUMP then
                m.forwardVel = 200;
            end
        end

        --mario actions automatic
        if (codeActive(70)) then
            if m.action == ACT_CLIMBING_POLE then
                m.pos.y = m.pos.y + 2000;
            end
        end

        if (codeActive(106)) then
            if (m.action == ACT_IN_CANNON) and (m.controller.buttonPressed & A_BUTTON) ~= 0 then
                m.forwardVel = 400.0 * coss(m.faceAngle.x);

                m.vel.y = 400.0 * sins(m.faceAngle.x);
            end
        end

        -- mario actions moving
        if (codeActive(39)) then
            if m.action == ACT_WALKING or m.action == ACT_HOLD_WALKING or m.action == ACT_HOLD_HEAVY_WALKING then
                m.forwardVel = 200
                m.faceAngle.y =
                    m.intendedYaw
                    - approach_s32((m.intendedYaw - m.faceAngle.y), 0, 0x7fff, 0x7fff);
            end
        end

        if (codeActive(44)) then
            if m.action == ACT_WALKING or m.action == ACT_HOLD_WALKING or m.action == ACT_HOLD_HEAVY_WALKING then
                if m.forwardVel < 48 then
                    m.forwardVel = 48
                end
            end
        end

        if (codeActive(18)) then
            if m.action == ACT_WALKING or m.action == ACT_HOLD_WALKING or m.action == ACT_HOLD_HEAVY_WALKING then
                if ((random_u16() & 0x1f) == 0) then
                    set_mario_action(m, ACT_STOMACH_SLIDE_STOP, 0);
                end
            end
        end

        if (codeActive(57)) then
            if m.action == ACT_BUTT_SLIDE then
                set_mario_action(m, ACT_DIVE_SLIDE, 0);
            end
        end

        if (codeActive(31)) then
            if m.action == ACT_CROUCH_SLIDE then
                set_jumping_action(m, ACT_GROUND_POUND, 0);
            end
        end

        --mario.c

        if (codeActive(55)) then
            m.marioObj.header.gfx.animInfo.animAccel = 0
        end

        if (codeActive(46)) then
            m.vel.y = m.vel.y / 2.0;
            --m.pos.y =  m.pos.y + 750.;
        end

        if (codeActive(75)) and m.action == ACT_LONG_JUMP then
            m.particleFlags = m.particleFlags| PARTICLE_VERTICAL_STAR;
            m.action = ACT_HARD_BACKWARD_AIR_KB;
        end

        if (m.squishTimer == 0) then
            if (codeActive(2)) then
                vec3f_set(m.marioObj.header.gfx.scale, 4.0, 4.0, 4.0);
            elseif (codeActive(109)) then
                vec3f_set(m.marioObj.header.gfx.scale, 1.0, 1.15, 1.0);
            end
        end

        if ((codeActive(56) and (m.action & ACT_FLAG_AIR) ~= 0 and m.vel.y < 0.0)) then
            -- djui_chat_message_create(""..m.vel.y)
            m.controller.buttonPressed = m.controller.buttonPressed | Z_TRIG;
        end

        if codeActive(72) then
            -- m.controller.stickY = random_u16()
        end
        if (codeActive(126)) then
            m.waterLevel = m.pos.y + 200;
        end

        if (m.hurtCounter > 0) then
            --m->health -= codeActive(66) ? 0x80 : 0x40;
            --  m->hurtCounter--;
            if (codeActive(94)) then
                local sf = 0
                if m.numCoins > 0 then
                    m.numCoins = m.numCoins - 1;
                    local coin = spawn_sync_object(id_bhvSingleCoinGetsSpawned, E_MODEL_YELLOW_COIN, m.pos.x, m.pos.y,
                        m.pos.z, nil);
                    obj_translate_xz_random(coin, 0);
                    coin.oCoinUnk110 = 20.0;
                    hud_set_value(HUD_DISPLAY_COINS, hud_get_value(HUD_DISPLAY_COINS) - 1);
                end
            end
        end

        if (codeActive(98)) then
            if ((get_global_timer() & 0x7) == 0) then
                m.marioObj.header.gfx.scale.y = 1.0 + (1.0 / 56.0) * random_u16() % 3
            end
        end

        if (codeActive(90)) then
            execute_mario_action(m.marioObj)
        end

        if (codeActive(78)) then
            for ppart = PANTS, PLAYER_PART_MAX - 1 do
                network_player_set_override_palette_color(gNetworkPlayers[0], ppart,
                    { r = random_u16(), g = random_u16(), b = random_u16() })
            end
        else
            network_player_reset_override_palette(gNetworkPlayers[0])
        end

        --object helpers.c
        if (codeActive(6)) then
            spawn_sync_object(id_bhvGoomba, E_MODEL_MARIO,
                m.pos.x, m.pos.y, m.pos.z, nil);
            spawn_sync_object(id_bhvGoomba, E_MODEL_MARIO,
                m.pos.x, m.pos.y, m.pos.z, nil);
            spawn_sync_object(id_bhvGoomba, E_MODEL_MARIO,
                m.pos.x, m.pos.y, m.pos.z, nil);
            codeClear(6)
        end

        if (codeActive(124)) then
            for_each_obj(function(g)
                g.oGravity = g.oGravity / 2
                g.oVelY = g.oVelY / 2
            end);
        end

        if (codeActive(147)) then
            for_each_obj(function(g)
                g.oForwardVel = g.oForwardVel * 2
            end);
        end

        --object list processor ----- sadly, game crash
        if (codeActive(79)) then
            --gPlayerSyncTable[0].modelId = (E_MODEL_WOODEN_SIGNPOST);
        else
            -- gPlayerSyncTable[0].modelId = (nil);
        end

        -- bobomb.inc.c

        if (codeActive(1)) then
            for_each_object_with_behavior(id_bhvBobomb,
                function(g) if g.oHeldState == HELD_HELD then g.oBobombFuseTimer = 153; end end)
        end

        --bubba.inc.c
        if (codeActive(145)) then
            for_each_object_with_behavior(id_bhvBubba,
                function(g)
                    bhv_bubba_loop()
                    bhv_bubba_loop()
                end)
        end

        --chainchomp.inc.c
        if (codeActive(125)) then
            for_each_object_with_behavior(id_bhvChainChomp,
                function(g) g.parentObj = m.marioObj end)
        end

        --goomba.inc.c

        if (codeActive(119)) then
            for_each_object_with_behavior(id_bhvGoomba,
                function(g) g.oGoombaSize = 2; end)
        end

        --spawnstar.inc.c
        local currentLevelStarFlags = save_file_get_star_flags(get_current_save_file_num() - 1,
            gNetworkPlayers[0].currCourseNum - 1);

        for_each_object_with_behavior(id_bhvStarSpawnCoordinates,
            function(g)
                starspawnedloop(g);

                if (codeActive(25)) then
                    -- bhv_koopa_update();
                end
            end)

        for_each_object_with_behavior(id_bhvSpawnedStar,
            function(g)
                starspawnedloop(g);

                if (codeActive(25)) then
                    --  bhv_koopa_update();
                end
            end)
        for_each_object_with_behavior(id_bhvSpawnedStarNoLevelExit,
            function(g)
                starspawnedloop(g);

                if (codeActive(25)) then
                    --bhv_koopa_update();
                end
            end)
        for_each_object_with_behavior(id_bhvStar,
            function(g)
                starspawnedloop(g);

                if (codeActive(25)) then
                    --bhv_koopa_update();
                end
            end)

        ---tuxie.inc.c

        if (codeActive(121)) then
            for_each_object_with_behavior(id_bhvSmallPenguin, function(g)
                spawn_sync_object(id_bhvBreakableBoxSmall, E_MODEL_BREAKABLE_BOX_SMALL, g.oPosX, g.oPosY, g.oPosZ, nil);
                obj_mark_for_deletion(g);
            end
            )
        end
        ---whomp.inc.c
        if (codeActive(144)) then
            for_each_object_with_behavior(id_bhvSmallWhomp, function(g)
                if g.oAction ~= 9 then
                    if g.oBehParams2ndByte == 0 then
                        g.oBehParams2ndByte = 1
                        g.oHealth = 3;
                    end
                end
            end)
        end


        -- add processing for more codes here:
    end
end
local validLevels = { [0] = 4, 5, 6, 7, 8, 12, 10, 11, 12, 13, 14, 15, 13, 17, 18, 19, 20, 21, 22, 23, 24, 15, 27, 28, 29, 30, 31, 33, 34, 36, 9, 6 };

local function chaos_process_random_tp()
    for texi = 1, #settextotoad do
        texture_override_reset(settextotoad[texi])
    end
    -- level update.c
    if (codeActive(74)) then
        warp_to_level(validLevels[random_u16() & 0x1f], 1, 1)
    end
end

local function chaos_processing_hud()
    djui_hud_set_font(FONT_HUD)
    djui_hud_set_resolution(RESOLUTION_N64)
    local m = gMarioStates[0]
    if quicktime ~= 0 then
        quicktime = quicktime - 1
        djui_hud_print_text("PRESS DPAD DOWN OR DIE",
            djui_hud_get_screen_width() * 0.5 - djui_hud_measure_text("PRESS DPAD DOWN OR DIE") * 1 * 0.5, 60, 1)
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
        djui_hud_print_text("PRESS DPAD DOWN TO DIE",
            djui_hud_get_screen_width() * 0.5 - djui_hud_measure_text("PRESS DPAD DOWN TO DIE") * 1 * 0.5, 60, 1)
        if m.controller.buttonPressed & D_JPAD ~= 0 then
            quicktime2 = 0
            m.health = 0
        end
    end
end

local codedebuglocal = false
local function debug_codes()
    djui_hud_set_font(FONT_HUD)
    djui_hud_set_resolution(RESOLUTION_N64)
    local x = 0

    --debug
    for i = 0, 20 do
        --   local x = 0
        if i == 12 then x = x + 190 end

        if codedebuglocal then
            if i < 12 then
                djui_hud_print_text("Code " .. i .. ": " .. codeSelected[i], x, 0 + i * 20, 1)
            else
                djui_hud_print_text("Code " .. i .. ": " .. codeSelected[i], x, 0 + (i - 11) * 20, 1)
            end
        end
    end
    -- texture_override_set("tree_seg3_texture_0302DE28", gTextures.mario_head)
end

local function debg_cmd()
    codedebuglocal = not codedebuglocal
    djui_chat_message_create("debug is now " .. tostring(codedebuglocal))
    return true
end

local function setchaoticness_cmd(r)
    local val = tonumber(r)

    if val > 150 then
        djui_chat_message_create("Number is bigger than 150!")
        return true
    end

    if val < 1 then
        djui_chat_message_create("Number is smaller than 0!")
        return true
    end

    if val then
        gGlobalSyncTable.MAXCODES = val
        djui_chat_message_create("Chaoticness set to: " .. tostring(val) .. "!")
        return true
    end
    return false
end

hook_event(HOOK_OBJECT_SET_MODEL, function(o)
    if obj_has_behavior_id(o, id_bhvMario) ~= 0 then
        local i = network_local_index_from_global(o.globalPlayerIndex)
        if gPlayerSyncTable[i].modelId ~= nil and obj_has_model_extended(o, gPlayerSyncTable[i].modelId) == 0 then
            obj_set_model_extended(o, gPlayerSyncTable[i].modelId)
        end
    end
end)

hook_event(HOOK_MARIO_UPDATE, chaos_processing)
hook_event(HOOK_ON_HUD_RENDER_BEHIND, chaos_processing_hud)
hook_event(HOOK_ON_HUD_RENDER, debug_codes)
hook_event(HOOK_ON_WARP, chaos_process_random_tp)
hook_event(HOOK_ON_PLAY_SOUND, function(s)
    if (codeActive(10)) then
        if ((s & 0xFF000000) == 0x24000000) then
            s = 0x24000000 | ((random_u16() & 0x3f) << 16) | (s & 0xFFFF);
            return s
        end
    end
end)
hook_event(HOOK_ON_INTERACT, function(m, o, t, s)
    if (codeActive(38)) then
        if m.action == ACT_PUSHING_DOOR or m.action == ACT_PULLING_DOOR then
            if t == INTERACT_DOOR or t == INTERACT_WARP_DOOR then
                m.faceAngle.y = m.faceAngle.y + 0x8000;
                m.marioObj.oMoveAngleYaw = m.marioObj.oMoveAngleYaw + 0x8000;
                m.marioObj.oFaceAngleYaw = m.marioObj.oFaceAngleYaw + 0x8000;
                o.oMoveAngleYaw = o.oMoveAngleYaw + 0x8000;
                o.oFaceAngleYaw = o.oFaceAngleYaw + 0x8000
            end
        end
    end
end)
if network_is_server() then
    hook_chat_command("d", "Debug", debg_cmd)
    hook_chat_command("set-chaotic", "Sets the chaoticness of the mod (Default = 20)", setchaoticness_cmd)
end
