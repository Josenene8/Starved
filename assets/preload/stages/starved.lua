function onCreate()
	-- background shit
   -- GifTrif FNF 2 hosea yo hice el port putoz
	makeLuaSprite('stage', 'starved/stage', 100, -255);
	setLuaSpriteScrollFactor('stage', 1.0, 1.0);
   scaleObject('stage', 1.55, 1.55);
	
	makeLuaSprite('light', 'starved/light', 115, -255);
	setLuaSpriteScrollFactor('light', 1.0, 1.0);
	scaleObject('light', 1.6, 1.6);
   runTimer('Loop', 0.1);

   makeLuaSprite('city', 'starved/city', 100, -210);
	setLuaSpriteScrollFactor('city', 0.8, 0.8);
   scaleObject('city', 1.55, 1.55);

   makeLuaSprite('towers', 'starved/towers', 100, -200);
	setLuaSpriteScrollFactor('towers', 0.9, 0.9);
   scaleObject('towers', 1.55, 1.55);

   makeLuaSprite('sonicisfuckingdead', 'starved/sonicisfuckingdead', 570, 80);
	setLuaSpriteScrollFactor('sonicisfuckingdead', 1.0, 1.0);
   scaleObject('sonicisfuckingdead', 0.7, 0.7);
 
   makeLuaText('watermark4',"Optimizacion by [Pico]XD", 0, 5, 555); -- You can edit the created by Prisma Text just dont change anything else
   setTextSize('watermark4', 20);

   makeLuaText('watermark3',"Creador de la mecanica by Misha21220 [GD]", 0, 5, 535); -- You can edit the created by Prisma Text just dont change anything else
   setTextSize('watermark3', 20);

   makeLuaText('watermark6',"Wifen , Fnf unirver y cenizo NO dejaron credits y por eso borre el link", 0, 5, 515); -- You can edit the created by Prisma Text just dont change anything else
   setTextSize('watermark6', 20);
 
   addLuaSprite('city', false);
   addLuaSprite('towers', false);
	addLuaSprite('stage', false);
   addLuaSprite('sonicisfuckingdead', false);
   addLuaSprite('light', true);
   addLuaText('watermark3')
   addLuaText('watermark4')
   addLuaText('watermark6')

end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Loop' then
doTweenAlpha('light','light', 0,1.0)
runTimer('LoopEnd', 1.2);
elseif tag == 'LoopEnd' then
doTweenAlpha('light','light',1, 1.0)
runTimer('Loop', 1.2);
 end
end