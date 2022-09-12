--code by NoWifiSignal
function onCreate()
    ignoreGf = true; --change "false" to "true" if you want the background GF to appear regardless of if the default GF is present
    if ignoreGf then
        woman = 'ignore';
    else
        woman = getProperty('gf.curCharacter');
    end
    
    if woman ~= 'gf' then
        if bpm == 100 then
            gfspeed = 24;
        else
            gfspeed = bpm / 6;
        end
        
        gfx = getCharacterX('gf');
        gfy = getCharacterY('gf') + 9;
        
        makeAnimatedLuaSprite('GF', 'characters/GF_assets_Dark', gfx, gfy);
        --setScrollFactor('GF', 0.9, 0.9);
        addAnimationByIndices('GF', 'idleLeft', 'GF Dancing Beat', '30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14', gfspeed);
        addAnimationByIndices('GF', 'idleRight', 'GF Dancing Beat', '15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29', gfspeed);
        addAnimationByIndices('GF', 'sad', 'gf sad', '0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12', gfspeed);
        addLuaSprite('GF', false);
setProperty('GF.alpha', 1)

    end
end
function onCountdownTick(counter)
    if counter % 2 == 0 then
        objectPlayAnimation('GF', 'idleLeft', true)
    else
        objectPlayAnimation('GF', 'idleRight', true)
    end
end
function onBeatHit()
    if curBeat % 2 == 0 then
        objectPlayAnimation('GF', 'idleLeft', true)
    else
        objectPlayAnimation('GF', 'idleRight', true)
    end
	if curBeat == 319 then
setProperty('GF.alpha', 0)
end
if curBeat == 320 then
setProperty('GF.alpha', 1)
end

end

    --maybe if noteType = gf note & gfSection then bgGf will sing?
--function keyPressed()
--       if noteType = 
--end
function noteMissPress(direction)
    objectPlayAnimation('GF', 'sad', true)
end
function noteMiss(id, direction, noteType, isSustainNote)
    objectPlayAnimation('GF', 'sad', true)
end
