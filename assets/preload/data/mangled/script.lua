
local xx = 550;
local yy = 525;
local xx2 = 850;
local yy2 = 525;
local ofs = 25;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end

function onBeatHit()
if curBeat == 99 then
      setProperty('defaultCamZoom', 1.2);
   end
if curBeat == 100 then
      setProperty('defaultCamZoom', 1.05);
   end
   if curBeat == 176 then
      setProperty('defaultCamZoom', 1.1);
   end
   if curBeat == 178 then
      setProperty('defaultCamZoom', 1.2);
   end
   if curBeat == 180 then
      setProperty('defaultCamZoom', 1.3);
   end
   if curBeat == 182 then
      setProperty('defaultCamZoom', 1.4);
   end
   if curBeat == 184 then
      setProperty('defaultCamZoom', 1.05);
   end
   if curBeat == 192 then
      setProperty('defaultCamZoom', 1.1);
   end
   if curBeat == 194 then
      setProperty('defaultCamZoom', 1.2);
   end
   if curBeat == 196 then
      setProperty('defaultCamZoom', 1.3);
   end
   if curBeat == 198 then
      setProperty('defaultCamZoom', 1.4);
   end
   
   if curBeat == 200 then
   setProperty('defaultCamZoom', 1.05);
   end
   if curBeat == 204 then
   setProperty('defaultCamZoom', 1.2);
   end
   if curBeat == 208 then
      setProperty('defaultCamZoom', 0.9);
   end
	if curBeat == 247 then
	xx = xx - 50;
	end
   if curBeat == 248 then
      setProperty('defaultCamZoom', 0.95);
   end
   if curBeat == 264 then
      setProperty('defaultCamZoom', 0.85);
   end
  if curBeat == 272 then
      setProperty('defaultCamZoom', 0.9);
   end
   if curBeat == 280 then
      setProperty('defaultCamZoom', 0.95);
   end
   if curBeat == 300 then
      setProperty('defaultCamZoom', 1.05);
   end
   if curBeat == 304 then
      setProperty('defaultCamZoom', 1.15);
   end
   if curBeat == 308 then
      setProperty('defaultCamZoom', 1.05);
   end
	if curBeat == 315 then
      yy = yy - 375;
   end
   if curBeat == 320 then
      setProperty('defaultCamZoom', 0.9);
   end
   if curBeat == 336 then
      setProperty('defaultCamZoom', 1.1);
   end
   if curBeat == 352 then
      setProperty('defaultCamZoom', 0.9);
   end
   if curBeat == 368 then
      setProperty('defaultCamZoom', 1.1);
   end
   if curBeat == 384 then
      setProperty('defaultCamZoom', 0.9);
   end
   if curBeat == 400 then
      setProperty('defaultCamZoom', 1.1);
   end
  if curBeat == 416 then
      setProperty('defaultCamZoom', 0.9);
   end
   if curBeat == 432 then
      setProperty('defaultCamZoom', 1.1);
   end
   if curBeat == 448 then
      setProperty('defaultCamZoom', 1.3);
   end
 if curBeat == 452 then
      setProperty('defaultCamZoom', 0.95);
   end
end