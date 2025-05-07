-- name: Chaos Edition
-- description: Super Mario 64, but random codes are injected into the game at random intervals, resulting in an experience that can only be described as chaotic.\n\nOriginal Mod Author: Kaze Emanuar\nMod Author: ManIsCat2\n\nNot all the codes could be ported for coop so some are missing.\nI am very sorry!
-- pausable: false

local CODETEST = 0
gGlobalSyncTable.MAXCODES = 8
local CODECOUNT = 150
local DEBUGTHECODE = false
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
gGlobalSyncTable.CODELENGTH = 120
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
local get_behavior_from_id = get_behavior_from_id
local obj_get_next = obj_get_next
local obj_get_first = obj_get_first
local nearest_mario_state_to_object = nearest_mario_state_to_object

local function traverse_geolayout(first, f)
    local g = first

    repeat
        f(g)
        if g.children then
            traverse_geolayout(g.children, f)
        end
        g = g.next
    until g == first
end

local function for_each_obj(func)
    for i = OBJ_LIST_EXT, NUM_OBJ_LISTS - 1 do
        local objF = obj_get_first(i)

        while objF do
            if objF.behavior ~= get_behavior_from_id(id_bhvStaticObject) and
                objF.behavior ~= get_behavior_from_id(id_RM_Scroll_Texture) and
                objF.behavior ~= get_behavior_from_id(id_editor_Scroll_Texture) then
                func(objF)
            end
            objF = obj_get_next(objF)
        end
    end
end

local math_sqrt = math.sqrt
local math_floor = math.floor
local random_u16 = random_u16
local random_float = random_float

local function samelevelas(im)
    return gNetworkPlayers[0].currLevelNum == gNetworkPlayers[im].currLevelNum and
        gNetworkPlayers[0].currAreaIndex == gNetworkPlayers[im].currAreaIndex and
        gNetworkPlayers[0].currActNum == gNetworkPlayers[im].currActNum
end

local function chaos_code_obj_all_behaviorscriptc(obj)
    local gCurrentObject = obj
    local gMarioObject = nearest_mario_state_to_object(gCurrentObject) and
        nearest_mario_state_to_object(gCurrentObject).marioObj or nil
    if gMarioObject then
        for im = 0, MAX_PLAYERS - 1 do
            local mIndex = gMarioStates[im].playerIndex
            if gPlayerSyncTable[mIndex].objfollowall then
                --gMarioObject = gMarioStates[im].marioObj
                if samelevelas(mIndex) then
                    if gCurrentObject.behavior ~= get_behavior_from_id(id_bhvActSelectorStarType) then
                        local x = gMarioObject.oPosX - gCurrentObject.oPosX
                        local y = gMarioObject.oPosY - gCurrentObject.oPosY
                        local z = gMarioObject.oPosZ - gCurrentObject.oPosZ
                        if math_sqrt(x * x + y * y + z * z) > 1.0 then
                            local distance = math_sqrt(x * x + y * y + z * z)
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

            if gPlayerSyncTable[mIndex].objrandomangle then
                --gMarioObject = gMarioStates[im].marioObj
                if samelevelas(mIndex) then
                    gCurrentObject.oFaceAnglePitch = gCurrentObject.oFaceAnglePitch +
                        math_floor(gCurrentObject.oPosX / 10.0)
                    gCurrentObject.oFaceAngleYaw = gCurrentObject.oFaceAngleYaw + math_floor(gCurrentObject.oPosX / 10.0)
                    gCurrentObject.oMoveAngleYaw = gCurrentObject.oMoveAngleYaw + math_floor(gCurrentObject.oPosX / 10.0)
                    gCurrentObject.oFaceAngleRoll = gCurrentObject.oFaceAngleRoll +
                        math_floor(gCurrentObject.oPosX / 10.0)
                end
            end

            if gPlayerSyncTable[mIndex].objrandomscale then
                --gMarioObject = gMarioStates[im].marioObj
                if samelevelas(mIndex) then
                    if (random_u16() & 0x1f) == 0 then
                        gCurrentObject.header.gfx.scale.x = gCurrentObject.header.gfx.scale.x * (random_float() * 2)
                        gCurrentObject.header.gfx.scale.y = gCurrentObject.header.gfx.scale.y * (random_float() * 2)
                        gCurrentObject.header.gfx.scale.z = gCurrentObject.header.gfx.scale.z * (random_float() * 2)
                    end
                end
            end
        end
    end
    if codeActive(96) then
        gCurrentObject.header.gfx.node.flags = gCurrentObject.header.gfx.node.flags | GRAPH_RENDER_BILLBOARD
    end
end

local sins = sins

gGlobalSyncTable.dumbTimer = 0;
local function chaos_code_obj_all_surface_loadc(obj)
    local gCurrentObject = obj
    if obj.collisionData ~= nil then
        if (codeActive(135)) then
            gCurrentObject.oPosY = gCurrentObject.oPosY + sins(gGlobalSyncTable.dumbTimer) * 8;
            gGlobalSyncTable.dumbTimer = gGlobalSyncTable.dumbTimer + 0x80;
        end

        for im = 0, MAX_PLAYERS - 1 do
            local msindex = gMarioStates[im].playerIndex
            if gPlayerSyncTable[msindex].objrandomyaw then
                --gMarioObject = gMarioStates[im].marioObj
                if samelevelas(msindex) then
                    gCurrentObject.oFaceAngleYaw = gCurrentObject.oFaceAngleYaw + 0x30;
                    gCurrentObject.oMoveAngleYaw = gCurrentObject.oFaceAngleYaw + 0x30;
                end
            end
        end
    end
end
local save_file_get_star_flags = save_file_get_star_flags
local get_current_save_file_num = get_current_save_file_num
local obj_set_model_extended = obj_set_model_extended
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
    'cave_09000000',
    'cave_09001000',
    'cave_09001800',
    'cave_09002800',
    'cave_09003000',
    'cave_09003800',
    'cave_09004800',
    'cave_09005800',
    'cave_09006800',
    'cave_09007000',
    'cave_09007800',
    'cave_09008800',
    'cave_09009800',
    'cave_0900A000',
    'cave_0900A800',
    'cave_0900B800',
    'cave_0900C000',
    'effect_0B000008',
    'effect_0B000808',
    'effect_0B001008',
    'effect_0B001808',
    'effect_0B002020',
    'effect_0B002820',
    'effect_0B003020',
    'effect_0B003820',
    'effect_0B004020',
    'effect_0B004820',
    'effect_0B005020',
    'effect_0B005820',
    'effect_0B006048',
    'effect_0B00684C',
    'effect_0B006AD8',
    'fire_09000000',
    'fire_09000800',
    'fire_09001000',
    'fire_09001800',
    'fire_09002000',
    'fire_09002800',
    'fire_09003000',
    'fire_09003800',
    'fire_09004000',
    'fire_09004800',
    'fire_09005000',
    'fire_09005800',
    'fire_09006000',
    'fire_09006800',
    'fire_09007000',
    'fire_09007800',
    'fire_09008000',
    'fire_09008800',
    'fire_09009000',
    'fire_09009800',
    'fire_0900A000',
    'fire_0900A800',
    'fire_0900B000',
    'fire_0900B800',
    'generic_09000000',
    'generic_09000800',
    'generic_09001000',
    'generic_09001800',
    'generic_09002000',
    'generic_09002800',
    'generic_09003000',
    'generic_09003800',
    'generic_09004000',
    'generic_09004800',
    'generic_09005000',
    'generic_09005800',
    'generic_09006000',
    'generic_09007000',
    'generic_09007800',
    'generic_09008000',
    'generic_09008800',
    'generic_09009000',
    'generic_09009800',
    'generic_0900A000',
    'generic_0900A800',
    'generic_0900B000',
    'grass_09000000',
    'grass_09000800',
    'grass_09001000',
    'grass_09001800',
    'grass_09002000',
    'grass_09002800',
    'grass_09003000',
    'grass_09003800',
    'grass_09004000',
    'grass_09004800',
    'grass_09005000',
    'grass_09005800',
    'grass_09006000',
    'grass_09006800',
    'grass_09007000',
    'grass_09007800',
    'grass_09008000',
    'grass_09008800',
    'grass_09009000',
    'grass_09009800',
    'grass_0900A000',
    'grass_0900A800',
    'grass_0900B000',
    'grass_0900B800',
    'inside_09000000',
    'inside_09001000',
    'inside_09002000',
    'inside_09003000',
    'inside_09003800',
    'inside_09004000',
    'inside_09004800',
    'inside_09005000',
    'inside_09005800',
    'inside_09006000',
    'inside_09007000',
    'inside_09008000',
    'inside_09008800',
    'inside_09009000',
    'inside_0900A000',
    'inside_0900B000',
    'inside_0900B800',
    'machine_09000000',
    'machine_09000800',
    'machine_09001000',
    'machine_09001800',
    'machine_09002000',
    'machine_09002800',
    'machine_09003000',
    'machine_09003800',
    'machine_09004000',
    'machine_09005000',
    'machine_09005800',
    'machine_09006000',
    'machine_09006800',
    'machine_09007000',
    'machine_09007800',
    'machine_09008000',
    'machine_09008400',
    'mountain_09000000',
    'mountain_09000800',
    'mountain_09001800',
    'mountain_09002800',
    'mountain_09003000',
    'mountain_09003800',
    'mountain_09004000',
    'mountain_09004800',
    'mountain_09005000',
    'mountain_09005800',
    'mountain_09006800',
    'mountain_09007000',
    'mountain_09007800',
    'mountain_09008000',
    'mountain_09008800',
    'mountain_09009800',
    'mountain_0900A000',
    'mountain_0900A800',
    'mountain_0900B000',
    'mountain_0900B800',
    'mountain_0900C000',
    'outside_09000000',
    'outside_09000800',
    'outside_09001000',
    'outside_09002000',
    'outside_09003000',
    'outside_09003800',
    'outside_09004000',
    'outside_09004800',
    'outside_09005800',
    'outside_09006000',
    'outside_09006800',
    'outside_09007800',
    'outside_09008000',
    'outside_09008800',
    'outside_09009000',
    'outside_09009800',
    'outside_0900A000',
    'outside_0900A800',
    'outside_0900B000',
    'outside_0900B400',
    'outside_0900BC00',
    'texture_transition_star_half',
    'texture_transition_circle_half',
    'texture_transition_mario',
    'texture_transition_bowser_half',
    'texture_waterbox_water',
    'texture_waterbox_jrb_water',
    'texture_waterbox_unknown_water',
    'texture_waterbox_mist',
    'texture_waterbox_lava',
    'texture_ia8_up_arrow',
    'sky_09000000',
    'sky_09000800',
    'sky_09001000',
    'sky_09001800',
    'sky_09002000',
    'sky_09003000',
    'sky_09003800',
    'sky_09004800',
    'sky_09005000',
    'sky_09005800',
    'sky_09006000',
    'texture_metal_hole',
    'sky_09007000',
    'sky_09007800',
    'sky_09008000',
    'snow_09000000',
    'snow_09000800',
    'snow_09001000',
    'snow_09002000',
    'snow_09002800',
    'snow_09003000',
    'snow_09003800',
    'snow_09004000',
    'snow_09004800',
    'snow_09005000',
    'snow_09005800',
    'snow_09006000',
    'snow_09006800',
    'snow_09007000',
    'snow_09008000',
    'snow_09008800',
    'snow_09009000',
    'snow_09009800',
    'spooky_09000000',
    'spooky_09000800',
    'spooky_09001800',
    'spooky_09002800',
    'spooky_09003800',
    'spooky_09004800',
    'spooky_09005000',
    'spooky_09006000',
    'spooky_09006800',
    'spooky_09007000',
    'spooky_09008000',
    'spooky_09008800',
    'spooky_09009000',
    'spooky_0900A000',
    'spooky_0900A800',
    'spooky_0900B000',
    'spooky_0900B800',
    'water_09000000',
    'water_09000800',
    'water_09001800',
    'water_09002800',
    'water_09003800',
    'water_09004800',
    'water_09005800',
    'water_09006000',
    'water_09006800',
    'water_09007800',
    'water_09008800',
    'water_09009000',
    'water_0900A000',
    'water_0900A800',
    'water_0900B800',
    'bbh_seg7_texture_07000000',
    'bbh_seg7_texture_07001000',
    'bbh_seg7_texture_07001800',
    'bbh_seg7_texture_07002000',
    'bbh_seg7_texture_07003000',
    'bbh_seg7_texture_07003400',
    'bbh_seg7_texture_07004400',
    'bitdw_seg7_texture_07000000',
    'bitdw_seg7_texture_07000800',
    'bitdw_seg7_texture_07001000',
    'bitdw_seg7_texture_07001800',
    'bitfs_seg7_texture_07000000',
    'bitfs_seg7_texture_07001000',
    'bitfs_seg7_texture_07001800',
    'bits_seg7_texture_07000000',
    'bits_seg7_texture_07001000',
    'bits_seg7_texture_07002000',
    'bob_seg7_texture_07000000',
    'bob_seg7_texture_07000800',
    'bob_seg7_texture_07001000',
    'bob_seg7_texture_07001800',
    'bob_seg7_texture_07002000',
    'bowser_1_seg7_texture_07000000',
    'bowser_1_seg7_texture_07001000',
    'bowser_1_seg7_texture_07001800',
    'bowser_2_seg7_texture_07000000',
    'bowser_3_seg7_texture_07000000',
    'bowser_3_seg7_texture_07000800',
    'bowser_3_seg7_texture_07001000',
    'castle_grounds_seg7_texture_0700C9E8',
    'castle_grounds_seg7_texture_0700D9E8',
    'castle_grounds_seg7_texture_07000000',
    'castle_grounds_seg7_texture_07001000',
    'castle_grounds_seg7_texture_07002000',
    'texture_castle_light',
    'inside_castle_seg7_texture_07000800',
    'inside_castle_seg7_texture_07001000',
    'inside_castle_seg7_texture_07002000',
    'inside_castle_seg7_texture_07003000',
    'inside_castle_seg7_texture_07003800',
    'inside_castle_seg7_texture_07004800',
    'inside_castle_seg7_texture_07005800',
    'inside_castle_seg7_texture_07006000',
    'inside_castle_seg7_texture_07006800',
    'inside_castle_seg7_texture_07007000',
    'inside_castle_seg7_texture_07007800',
    'inside_castle_seg7_texture_07008000',
    'inside_castle_seg7_texture_07008800',
    'inside_castle_seg7_texture_07009000',
    'inside_castle_seg7_texture_07009800',
    'inside_castle_seg7_texture_0700A000',
    'inside_castle_seg7_texture_0700A800',
    'inside_castle_seg7_texture_0700B800',
    'inside_castle_seg7_texture_0700C800',
    'inside_castle_seg7_texture_0700D800',
    'inside_castle_seg7_texture_0700E800',
    'inside_castle_seg7_texture_0700F800',
    'inside_castle_seg7_texture_07012800',
    'inside_castle_seg7_texture_07013800',
    'inside_castle_seg7_texture_07014800',
    'inside_castle_seg7_texture_07015800',
    'inside_castle_seg7_texture_07016800',
    'inside_castle_seg7_texture_07017000',
    'inside_castle_seg7_texture_07017800',
    'inside_castle_seg7_texture_07018800',
    'inside_castle_seg7_texture_07019800',
    'inside_castle_seg7_texture_0701A800',
    'inside_castle_seg7_texture_0701B800',
    'inside_castle_seg7_texture_0701C800',
    'inside_castle_seg7_texture_0701D800',
    'inside_castle_seg7_texture_0701E800',
    'inside_castle_seg7_texture_0701F800',
    'inside_castle_seg7_texture_07020800',
    'ccm_seg7_texture_07011958',
    'ccm_seg7_texture_07000000',
    'ccm_seg7_texture_07000800',
    'ccm_seg7_texture_07000900',
    'ccm_seg7_texture_07001100',
    'ccm_seg7_texture_07001900',
    'ccm_seg7_texture_07002100',
    'ccm_seg7_texture_07002900',
    'ccm_seg7_texture_07003100',
    'ccm_seg7_texture_07003900',
    'ccm_seg7_texture_07003B00',
    'ccm_seg7_texture_07004300',
    'ccm_seg7_texture_07004B00',
    'cotmc_seg7_texture_07000000',
    'cotmc_seg7_texture_07001000',
    'cotmc_seg7_texture_07001800',
    'cotmc_seg7_texture_07002000',
    'cotmc_seg7_texture_07002800',
    'ddd_seg7_texture_07000000',
    'ddd_seg7_texture_07001000',
    'ddd_seg7_texture_07001800',
    'ddd_seg7_texture_07002000',
    'ddd_seg7_texture_07003000',
    'hmc_seg7_texture_07024CE0',
    'hmc_seg7_texture_07000000',
    'hmc_seg7_texture_07001000',
    'hmc_seg7_texture_07002000',
    'hmc_seg7_texture_07003000',
    'hmc_seg7_texture_07003800',
    'hmc_seg7_texture_07004000',
    'hmc_seg7_texture_07004800',
    'intro_seg7_texture_07007EA0',
    'intro_seg7_texture_070086A0',
    'jrb_seg7_texture_07000000',
    'jrb_seg7_texture_07000800',
    'jrb_seg7_texture_07001800',
    'jrb_seg7_texture_07002000',
    'lll_seg7_texture_07000000',
    'lll_seg7_texture_07000800',
    'lll_seg7_texture_07001000',
    'lll_seg7_texture_07001800',
    'lll_seg7_texture_07002000',
    'lll_seg7_texture_07002800',
    'lll_seg7_texture_07003000',
    'lll_seg7_texture_07003800',
    'lll_seg7_texture_07004000',
    'lll_seg7_texture_07004800',
    'lll_seg7_texture_07005000',
    'lll_seg7_texture_07005800',
    'lll_seg7_texture_07006000',
    'lll_seg7_texture_07006800',
    'lll_seg7_texture_07007000',
    'lll_seg7_texture_07007800',
    'lll_seg7_texture_07008000',
    'lll_seg7_texture_07008800',
    'lll_seg7_texture_07009000',
    'lll_seg7_texture_07009800',
    'lll_seg7_texture_0700A000',
    'lll_seg7_texture_0700A800',
    'lll_seg7_texture_0700B000',
    'lll_seg7_texture_0700B800',
    'lll_seg7_texture_0700C000',
    'lll_seg7_texture_0700C800',
    'lll_seg7_texture_0700D000',
    'lll_seg7_texture_0700D200',
    'lll_seg7_texture_0700D400',
    'lll_seg7_texture_0700DC00',
    'lll_seg7_texture_0700E400',
    'lll_seg7_texture_0700EC00',
    'lll_seg7_texture_0700F400',
    'pss_seg7_texture_07000000',
    'pss_seg7_texture_07000800',
    'pss_seg7_texture_07001000',
    'texture_quarter_flying_carpet',
    'rr_seg7_texture_07000800',
    'rr_seg7_texture_07001800',
    'sl_seg7_texture_07000000',
    'sl_seg7_texture_07000800',
    'sl_seg7_texture_07001000',
    'sl_seg7_texture_07001800',
    'sl_seg7_texture_07002000',
    'ssl_quicksand',
    'ssl_seg7_texture_07000000',
    'ssl_seg7_texture_07000800',
    'ssl_pyramid_sand',
    'ssl_seg7_texture_07001800',
    'ssl_seg7_texture_07002000',
    'ssl_seg7_texture_07002800',
    'ssl_seg7_texture_07003800',
    'ssl_seg7_texture_0700BFA8',
    'ssl_seg7_texture_0700C7A8',
    'ssl_seg7_texture_0700D7A8',
    'ssl_seg7_texture_0700E7A8',
    'thi_seg7_texture_07000000',
    'thi_seg7_texture_07000800',
    'totwc_seg7_texture_07000000',
    'totwc_seg7_texture_07001000',
    'totwc_seg7_texture_07001800',
    'totwc_seg7_texture_07002000',
    'ttc_yellow_triangle',
    'ttc_seg7_texture_07000000',
    'ttc_seg7_texture_07000800',
    'ttm_seg7_texture_0702AD30',
    'ttm_seg7_texture_07000000',
    'ttm_seg7_texture_07000800',
    'ttm_seg7_texture_07001000',
    'ttm_seg7_texture_07001800',
    'ttm_seg7_texture_07002000',
    'ttm_seg7_texture_07002800',
    'ttm_seg7_texture_07003000',
    'ttm_seg7_texture_07004000',
    'vcutm_seg7_texture_07000000',
    'vcutm_seg7_texture_07000800',
    'vcutm_seg7_texture_07001800',
    'vcutm_seg7_texture_07002800',
    'wdw_seg7_texture_07000000',
    'wdw_seg7_texture_07000800',
    'wdw_seg7_texture_07001000',
    'wdw_seg7_texture_07001800',
    'wdw_seg7_texture_07002000',
    'wf_seg7_texture_07000000',
    'wf_seg7_texture_07000800',
    'wf_seg7_texture_07001000',
    'wf_seg7_texture_07001800',
    'wf_seg7_texture_07002000',
    'wf_seg7_texture_07002800',
    'wmotr_seg7_texture_07000000',
    'wmotr_seg7_texture_07000800',
    'wmotr_seg7_texture_07000C00',
    'wmotr_seg7_texture_07001400',
    'wmotr_seg7_texture_07001600',


}
local math_randomseed = math.randomseed
local math_random = math.random
local cur_obj_nearest_object_with_behavior = cur_obj_nearest_object_with_behavior
local texture_override_set = texture_override_set
local texture_override_reset = texture_override_reset
local coss = coss
local sequence_player_set_tempo = sequence_player_set_tempo
local camera_freeze = camera_freeze
local camera_unfreeze = camera_unfreeze
local is_game_paused = is_game_paused
local execute_mario_action = execute_mario_action
local network_player_reset_override_palette = network_player_reset_override_palette
local network_player_set_override_palette_color = network_player_set_override_palette_color
local vec3f_set = vec3f_set
local djui_hud_get_screen_width = djui_hud_get_screen_width
local djui_hud_measure_text = djui_hud_measure_text
local djui_hud_print_text = djui_hud_print_text
local djui_hud_set_font = djui_hud_set_font
local djui_hud_set_resolution = djui_hud_set_resolution
local network_local_index_from_global = network_local_index_from_global
local obj_has_model_extended = obj_has_model_extended
local hud_set_value = hud_set_value
local approach_s32 = approach_s32
---@param m MarioState
local function chaos_processing(m)
    -- local i
    if m.playerIndex == 0 then
        math_randomseed(math_random(math_random(3274762, 92382737472)), math_random(80002, 9000004027))
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
            m.marioObj.hookRender = 90
            --[[ if (!gMarioState.marioObj) then
        gMarioState.marioObj = 0x803ffC00 -- if no mario exists, use a spoof address. saves us
                                            -- checking for null pointers
    }]]
            for i = 0, gGlobalSyncTable.MAXCODES - 1 do -- tick down timers for all 8 active codes. if the time runs
                -- out, it disables the code.
                if (codeTimers[i]) then
                    codeTimers[i] = codeTimers[i] - 1
                    if (codeTimers[i] == 0) then
                        if not DEBUGTHECODE then
                            codeSelected[i] = 0
                        end
                    end
                end
            end
            newCodeTimer = newCodeTimer + 1
            if (newCodeTimer > gGlobalSyncTable.CODELENGTH) then -- minimum wait time for a new code
                newCodeTimer = 0
                if not DEBUGTHECODE then
                    j = random_u16() % CODECOUNT -- select a code
                    --j = 55
                end

                local i = 0

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
                if not DEBUGTHECODE then --[[djui_chat_message_create("from " .. codeSelected[i])]]
                    codeSelected[i] =
                        j --[[djui_chat_message_create("to " .. codeSelected[i])]]
                end                                                   -- turn on code number j
                if not DEBUGTHECODE then codeTimers[i] = timer[j] end -- predetermined timers for some codes
                if (codeTimers[i] == 0) then
                    codeTimers[i] = 1800
                end

                if j == 5 then -- from down here is codes that do stuff only on activision
                    if (gCurrLvlNum ~= LEVEL_CASTLE_GROUNDS) then
                        --sWarpDest.type = 2
                        codeClear(5)
                    end
                elseif j == 7 then
                    -- (toadface)
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
                                m.floor.type = validTypes[math_random(0, #validTypes)]
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
                m.pos.x = m.pos.x - sins(m.faceAngle.y) * 8
                m.pos.z = m.pos.z - coss(m.faceAngle.y) * 8
            end

            if codeActive(67) then
                m.pos.x = m.pos.x + sins(m.faceAngle.y) * 10
                m.pos.z = m.pos.z + coss(m.faceAngle.y) * 10
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
                    play_character_sound(m, CHAR_SOUND_ATTACKED)
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

            --surface collision.c: not possible

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
                if (m.area.camera.cutscene == 0) then
                    camera_freeze()
                end
            else
                camera_unfreeze()
            end

            --game_init.c
            --at hook before

            --ingame menu.c not possible

            -- interaction.c

            if (codeActive(19)) then
                m.vel.y = m.vel.y * 1.5;
            end

            if (codeActive(115)) then
                gServerSettings.stayInLevelAfterStar = 1
            else
                gServerSettings.stayInLevelAfterStar = 0
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
                m.marioObj.header.gfx.animInfo.animFrame = 0
                m.marioObj.header.gfx.animInfo.prevAnimFrame = 0
            end

            if (codeActive(46)) then
                m.vel.y = m.vel.y / 2.0;
                --m.pos.y =  m.pos.y + 750.;
            end

            if (codeActive(75)) and m.action == ACT_LONG_JUMP then
                m.particleFlags = m.particleFlags| PARTICLE_VERTICAL_STAR;
                m.action = ACT_HARD_BACKWARD_AIR_KB;
            end

            if ((codeActive(56) and (m.action & ACT_FLAG_AIR) ~= 0 and m.vel.y < 0.0)) then
                -- djui_chat_message_create(""..m.vel.y)
                m.controller.buttonPressed = m.controller.buttonPressed | Z_TRIG;
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
                        local coin = spawn_sync_object(id_bhvSingleCoinGetsSpawned, E_MODEL_YELLOW_COIN, m.pos.x, m.pos
                            .y,
                            m.pos.z, nil);
                        if (coin) then
                            obj_translate_xz_random(coin, 0);
                            coin.oCoinUnk110 = 20.0;
                        end
                        hud_set_value(HUD_DISPLAY_COINS, m.numCoins);
                    end
                end
            end

            if (codeActive(98)) then
                --if ((get_global_timer() & 0x7) == 0) then
                --m.marioObj.header.gfx.scale.y = 1.0 + (1.0 / 56.0) * random_u16() % 3
                -- end
            end

            if (codeActive(90)) then
                execute_mario_action(m.marioObj)
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

            --object list processor ----- sadly, game crash
            if (codeActive(79)) then
                --gPlayerSyncTable[0].modelId = (E_MODEL_WOODEN_SIGNPOST);
            else
                -- gPlayerSyncTable[0].modelId = (nil);
            end

            ---sync deez nuts
            if (codeActive(78)) then
                gPlayerSyncTable[0].changepcolor = true
            else
                gPlayerSyncTable[0].changepcolor = false
            end


            if (codeActive(2)) then
                --vec3f_set(m.marioObj.header.gfx.scale, 4.0, 4.0, 4.0);
                gPlayerSyncTable[0].scale4 = true
            else
                gPlayerSyncTable[0].scale4 = false
            end
            if (codeActive(109)) then
                --vec3f_set(m.marioObj.header.gfx.scale, 1.0, 1.15, 1.0);
                gPlayerSyncTable[0].scaleluigi = true
            else
                gPlayerSyncTable[0].scaleluigi = false
            end

            if codeActive(9) then
                gPlayerSyncTable[0].objfollowall = true
            else
                gPlayerSyncTable[0].objfollowall = false
            end

            if codeActive(41) then
                gPlayerSyncTable[0].objrandomangle = true
            else
                gPlayerSyncTable[0].objrandomangle = false
            end

            if codeActive(88) then
                gPlayerSyncTable[0].objrandomscale = true
            else
                gPlayerSyncTable[0].objrandomscale = false
            end

            if (codeActive(139)) then
                gPlayerSyncTable[0].objrandomyaw = true
            else
                gPlayerSyncTable[0].objrandomyaw = false
            end

            --- more
            if (codeActive(124)) then
                for_each_obj(function(g)
                    --g.oGravity = g.oGravity / 2
                    if g.behavior ~= get_behavior_from_id(id_bhvKingBobomb) then
                        g.oVelY = g.oVelY / 2
                    end
                end);
            end

            if (codeActive(147)) then
                for_each_obj(function(g)
                    g.oForwardVel = g.oForwardVel * 2
                end);
            end

            if (codeActive(113)) then
                for_each_obj(function(g)
                    g.header.gfx.animInfo.animFrame = 0
                end);
            end


            -- add processing for more codes here:
        end
    end
    -- or here for unlocal(global)


    -- all

    -- sync fieds

    if (gPlayerSyncTable[m.playerIndex].changepcolor) then
        for ppart = PANTS, PLAYER_PART_MAX - 1 do
            network_player_set_override_palette_color(gNetworkPlayers[m.playerIndex], ppart,
                { r = random_u16(), g = random_u16(), b = random_u16() })
        end
    else
        network_player_reset_override_palette(gNetworkPlayers[m.playerIndex])
    end

    if (m.squishTimer == 0) then
        if gPlayerSyncTable[m.playerIndex].scale4 then
            vec3f_set(gMarioStates[m.playerIndex].marioObj.header.gfx.scale, 4.0, 4.0, 4.0)
        end

        if gPlayerSyncTable[m.playerIndex].scaleluigi then
            vec3f_set(gMarioStates[m.playerIndex].marioObj.header.gfx.scale, 1.0, 1.15, 1.0)
        end
    end
end

local function chaos_proccesing_before(m)
    if m.playerIndex == 0 then
        if (codeActive(45)) then
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
        end

        if (codeActive(61)) then
            if (m.numCoins & 1) ~= 0 then
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

        if (codeActive(4)) then
            m.controller.buttonPressed =
                (m.controller.buttonPressed & 0x3FFF)
                | ((m.controller.buttonPressed & 0x4000) << 1)
                | ((m.controller.buttonPressed & 0x8000) >> 1);
        end

        if codeActive(72) then
            m.controller.stickY = random_u16()
        end
    end
end

local screentimer = 0

---@param o Object
local function chaos_proccess_obj_render(o)
    if o.hookRender == 90 then
        if (codeActive(54)) then
            traverse_geolayout(o.header.gfx.node.parent.parent.parent, function(g)
                if g.type == GRAPH_NODE_TYPE_DISPLAY_LIST then
                    local dl = cast_graph_node(g).displayList
                    if dl then
                        gfx_set_command(dl, "gsSPClearGeometryMode(G_LIGHTING)")
                    end
                end
            end)
        elseif (codeActive(101)) then
            local camnode = cast_graph_node(o.header.gfx.node.parent.parent.parent)
            camnode.matrixPtr.m00 = camnode.matrixPtr.m00 + sins(screentimer) * 0.001
            screentimer = screentimer + 200
        end
    end
end

local function chaos_processing_slower()
    --behavior_script.c
    for_each_obj(chaos_code_obj_all_behaviorscriptc)
    --surface_load.c

    for_each_obj(chaos_code_obj_all_surface_loadc)
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
    local dx = djui_hud_get_screen_width() * 0.5 - djui_hud_measure_text("PRESS DPAD DOWN OR DIE") * 1 * 0.5
    if quicktime ~= 0 then
        quicktime = quicktime - 1
        djui_hud_print_text("PRESS DPAD DOWN OR DIE", dx, 60, 1)
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
        djui_hud_print_text("PRESS DPAD DOWN TO DIE", dx, 60, 1)
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

local function debg_cmd2(d)
    codeSelected[1] = tonumber(d)
end


local function setchaoticness_cmd(ind, val)
    gGlobalSyncTable.MAXCODES = val
    --djui_chat_message_create("set" .. val)
    update_mod_menu_element_name(ind, "Chaoticness: " .. val)
end

local function setchaostimer_cmd(ind, val)
    gGlobalSyncTable.CODELENGTH = val * 30
    --djui_chat_message_create("set" .. val * 30)
    update_mod_menu_element_name(ind, "Chaos Timer: " .. val .. " (seconds)")
end

hook_event(HOOK_BEFORE_MARIO_UPDATE, chaos_proccesing_before)
hook_event(HOOK_MARIO_UPDATE, chaos_processing)
hook_event(HOOK_ON_OBJECT_RENDER, chaos_proccess_obj_render)
hook_event(HOOK_UPDATE, chaos_processing_slower)
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
    if t == INTERACT_DOOR or t == INTERACT_WARP_DOOR then
        if (codeActive(37)) then
            obj_mark_for_deletion(o)
            spawn_sync_object(id_bhvExplosion, E_MODEL_EXPLOSION, o.oPosX, o.oPosY, o.oPosZ, nil);
            set_mario_action(m, ACT_THROWN_FORWARD, 0);
        end

        if (codeActive(38)) then
            if m.action == ACT_PUSHING_DOOR or m.action == ACT_PULLING_DOOR then
                m.faceAngle.y = m.faceAngle.y + 0x8000;
                m.marioObj.oMoveAngleYaw = m.marioObj.oMoveAngleYaw + 0x8000;
                m.marioObj.oFaceAngleYaw = m.marioObj.oFaceAngleYaw + 0x8000;
                o.oMoveAngleYaw = o.oMoveAngleYaw + 0x8000;
                o.oFaceAngleYaw = o.oFaceAngleYaw + 0x8000
            end
        end
    end

    if t == INTERACT_GRABBABLE then
        if (codeActive(123)) then
            mario_stop_riding_and_holding(m);
            o.oInteractStatus = INT_STATUS_INTERACTED | INT_STATUS_GRABBED_MARIO;

            m.faceAngle.y = o.oMoveAngleYaw;
            m.interactObj = o;
            m.usedObj = o;

            update_mario_sound_and_camera(m);
            play_character_sound(m, CHAR_SOUND_OOOF)
            set_mario_action(m, ACT_THROWN_FORWARD, 0);
        end
    end
end)
if not DEBUGTHECODE then
    if network_is_server() then
        --hook_chat_command("d", "Debug", debg_cmd)
        -- hook_chat_command("ad", "aDebug", debg_cmd2)
        hook_mod_menu_slider("Chaoticness: " .. gGlobalSyncTable.MAXCODES, 8, 1, 150, setchaoticness_cmd)
        hook_mod_menu_slider("Chaos Timer: " .. math_floor(gGlobalSyncTable.CODELENGTH / 30) .. " (seconds)", 4, 0, 30,
            setchaostimer_cmd)
    end
else
    hook_chat_command("d", "Debug", debg_cmd)
    hook_chat_command("ad", "aDebug", debg_cmd2)
    hook_mod_menu_slider("Chaoticness: " .. gGlobalSyncTable.MAXCODES, 8, 1, 150, setchaoticness_cmd)
    hook_mod_menu_slider("Chaos Timer: " .. math_floor(gGlobalSyncTable.CODELENGTH / 30) .. " (seconds)", 4, 0, 30,
        setchaostimer_cmd)
end

hook_behavior(id_bhvBobomb, get_object_list_from_behavior(get_behavior_from_id(id_bhvBobomb)), false, nil,
    function(g)
        if (codeActive(1)) then
            if g.oHeldState == HELD_HELD then
                g.oBobombFuseTimer = 153;
            end
        end
    end)


hook_behavior(id_bhvBubba, get_object_list_from_behavior(get_behavior_from_id(id_bhvBubba)), false, nil,
    function(g)
        if (codeActive(145)) then
            bhv_bubba_loop()
            bhv_bubba_loop()
        end
    end)

hook_behavior(id_bhvChainChomp, get_object_list_from_behavior(get_behavior_from_id(id_bhvChainChomp)), false, nil,
    function(g)
        if (codeActive(125)) then
            g.parentObj = nearest_player_to_object(g)
        end
    end)

hook_behavior(id_bhvGoomba, get_object_list_from_behavior(get_behavior_from_id(id_bhvGoomba)), false, function(g)
    if (codeActive(119)) then
        g.oGoombaSize = 2
    end
end, nil)

local function allStars(g)
    starspawnedloop(g)
end

local function allstarsloop(g)
    if (codeActive(25)) then
        bhv_koopa_update();
        obj_set_model_extended(g, E_MODEL_STAR)
    end
end

hook_behavior(id_bhvStar, get_object_list_from_behavior(get_behavior_from_id(id_bhvStar)), false, allStars, allstarsloop)
hook_behavior(id_bhvStarSpawnCoordinates, get_object_list_from_behavior(get_behavior_from_id(id_bhvStarSpawnCoordinates)),
    false, allStars, allstarsloop)
hook_behavior(id_bhvSpawnedStar, get_object_list_from_behavior(get_behavior_from_id(id_bhvSpawnedStar)), false, allStars,
    allstarsloop)
hook_behavior(id_bhvSpawnedStarNoLevelExit,
    get_object_list_from_behavior(get_behavior_from_id(id_bhvSpawnedStarNoLevelExit)), false, allStars, allstarsloop)

hook_behavior(id_bhvSmallPenguin, get_object_list_from_behavior(get_behavior_from_id(id_bhvSmallPenguin)), false, nil,
    function(g)
        if (codeActive(121)) then
            spawn_sync_object(id_bhvBreakableBoxSmall, E_MODEL_BREAKABLE_BOX_SMALL, g.oPosX, g.oPosY, g.oPosZ,
                nil);
            obj_mark_for_deletion(g);
        end
    end)

hook_behavior(id_bhvSmallWhomp, get_object_list_from_behavior(get_behavior_from_id(id_bhvSmallWhomp)), false, nil,
    function(g)
        if (codeActive(144)) then
            if g.oAction ~= 9 then
                if g.oBehParams2ndByte == 0 then
                    g.oBehParams2ndByte = 1
                    g.oHealth = 3;
                end
            end
        end
    end)
