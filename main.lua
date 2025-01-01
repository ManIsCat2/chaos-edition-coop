-- name: Chaos Edition

local CODETEST = 0
local MAXCODES = 10
local CODECOUNT = 150
local codeSelected = { [0] = CODETEST, CODETEST, CODETEST, CODETEST, CODETEST,
    CODETEST, CODETEST, CODETEST, CODETEST, CODETEST };
local codeTimers = {  [0] =0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
local function codeActive(ID)
    for i = 0, MAXCODES - 1 do
        if (codeSelected[i] == ID) then
            return true;
        end
    end
    return false;
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
    --[[000]] 0, 0, 120, 120, 0, 0, 0, 0, 60, 180,
    --[[010]] 0, 0, 0, 0, 0, 0, 0, 0, 180, 0,
    --[[020]] 200, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    --[[030]] 300, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    --[[040]] 0, 30, 0, 0, 0, 0, 0, 0, 0, 0,
    --[[050]] 30, 120, 0, 0, 0, 0, 300, 0, 0, 0,
    --[[060]] 300, 120, 0, 0, 0, 0, 0, 600, 0, 0,
    --[[070]] 0, 0, 0, 600, 0, 0, 0, 0, 0, 0,
    --[[080]] 300, 0, 150, 150, 120, 0, 0, 0, 300, 0,
    --[[090]] 150, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    --[[100]] 0, 0, 0, 0, 0, 0, 0, 150, 0, 0,
    --[[110]] 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    --[[120]] 0, 0, 0, 0, 0, 0, 120, 120, 0, 0,
    --[[130]] 0, 0, 300, 0, 0, 0, 0, 0, 120, 0,
    --[[140]] 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};
local CODELENGTH = 120

local newCodeTimer = 0
function chaos_processing(m)
    -- local i;
    if m.playerIndex == 0 then
        local j = 999;
        local gCurrLvlNum
        gCurrLvlNum = gNetworkPlayers[0].currLevelNum;
        local gMarioObject = m.marioObj
        --local DL = 0;
        -- Gfx *a;
        -- struct Object *object;
        --  int sizecurrent = 0;
        local inActSelect = cur_obj_nearest_object_with_behavior(get_behavior_from_id(id_bhvActSelector))
        if (gCurrLvlNum ~= 1) then
            --[[ if (!gMarioState->marioObj) {
            gMarioState->marioObj = 0x803ffC00; -- if no mario exists, use a spoof address. saves us
                                                -- checking for null pointers
        }]]
            for i = 0, MAXCODES - 1 do -- tick down timers for all 8 active codes. if the time runs
                -- out, it disables the code.
                if (codeTimers[i]) then
                    codeTimers[i] = codeTimers[i] - 1;
                    if (codeTimers[i] == 0) then
                        codeSelected[i] = 0;
                    end
                end
            end
            newCodeTimer = newCodeTimer + 1
            if (newCodeTimer > CODELENGTH) then -- minimum wait time for a new code
                newCodeTimer = 0;
                j = random_u16() % CODECOUNT; -- select a code
                -- j = 122;
                i = random_u16() % MAXCODES; -- select an index for the code to exist in
                -- make some codes less likely in some stages
                if (gCurrLvlNum == LEVEL_BITDW or gCurrLvlNum == LEVEL_BITFS
                        or gCurrLvlNum == LEVEL_BITS or gCurrLvlNum == LEVEL_VCUTM) then
                    if (j == 111 or j == 4 or j == 47) then
                        if (random_u16() & 3) then
                            j = 0;
                        end
                    end
                end
                codeSelected[i] = j;  -- turn on code number j
                codeTimers[i] = timer[j]; -- predetermined timers for some codes
                if (codeTimers[i] == 0) then
                    codeTimers[i] = 1800;
                end

                if j == 5 then -- from down here is codes that do stuff only on activision
                    if (gCurrLvlNum ~= LEVEL_CASTLE_GROUNDS) then
                        --sWarpDest.type = 2;
                        codeClear(5);
                    end
                elseif j == 7 then
                    --not possible
                elseif j == 12 then
                    gLakituState.keyDanceRoll = random_u16() & 0x3fff - 0x2000;
                elseif j == 26 then
                    quicktime = 60;
                elseif j == 32 then
                    if (not inActSelect) then
                        spawn_sync_object(id_bhv1Up, E_MODEL_1UP, m.pos.x, m.pos.y, m.pos.z, nil); -----id_bhv1Down
                    end
                end
            end
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
end

hook_event(HOOK_MARIO_UPDATE, chaos_processing)

hook_event(HOOK_ON_HUD_RENDER, debug_codes)