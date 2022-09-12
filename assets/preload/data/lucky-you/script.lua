--Arrows Floating

function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/2500)*(curBpm/60)

--Player Notes

noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 - 80*math.sin((currentBeat+4*0.25)*math.pi), 1.5)
noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 - 80*math.sin((currentBeat+5*0.25)*math.pi), 1.5)
noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 - 80*math.sin((currentBeat+6*0.25)*math.pi), 1.5)
noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 - 80*math.sin((currentBeat+7*0.25)*math.pi), 1.5)

--Opponent Notes

noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + 40*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + 40*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + 40*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + 40*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end