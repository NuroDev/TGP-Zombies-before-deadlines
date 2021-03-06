log = require('plugins/Log')

spriteManager = {}
spriteManager.sprites = {}
spriteManager.sprites.entities = {}
spriteManager.sprites.weapons = {}
spriteManager.sprites.ui = {}
spriteManager.sprites.backgrounds = {}

local assetsSpritesPath = "assets/sprites/"

----------------------------------------
-- Sprite Manager Initializtion
----------------------------------------
function spriteManager.Load()
  log.info("[INIT]: Loading sprites...")

  -- Entities
  spriteManager.sprites.entities.player = love.graphics.newImage(assetsSpritesPath .. "entities/player/playerSpritesheet.png")
  spriteManager.sprites.entities.zombie = love.graphics.newImage(assetsSpritesPath .. "entities/zombie/zombie_normal.png")
  spriteManager.sprites.entities.zombieFast = love.graphics.newImage(assetsSpritesPath .. "entities/zombie/zombie_fast.png")
  spriteManager.sprites.entities.zombieFat = love.graphics.newImage(assetsSpritesPath .. "entities/zombie/zombie_fat.png")
  spriteManager.sprites.entities.zombieDeath = love.graphics.newImage(assetsSpritesPath .. "entities/zombie/zombieDeath.png")

  -- Weapons
  spriteManager.sprites.weapons.tempGunSelection = love.graphics.newImage(assetsSpritesPath .. "weapons/TempGunSelection.png") 
  spriteManager.sprites.weapons.bullet = love.graphics.newImage(assetsSpritesPath .. "weapons/bullet.png")

  -- UI spritesheets
  spriteManager.sprites.ui.crosshair = love.graphics.newImage(assetsSpritesPath .. "crosshair.png")
  spriteManager.sprites.ui.ammoPickup = love.graphics.newImage(assetsSpritesPath .. "ui/ammoPickup.png")
  spriteManager.sprites.ui.gunSelection = love.graphics.newImage(assetsSpritesPath .. "ui/gunSelection.png")
  spriteManager.sprites.ui.healthBar = love.graphics.newImage(assetsSpritesPath .. "ui/HealthBarUI.png")
  spriteManager.sprites.ui.AmmoLeft = love.graphics.newImage(assetsSpritesPath .. "ui/AmmoLeft.png")
  spriteManager.sprites.ui.ZombieHead = love.graphics.newImage(assetsSpritesPath .. "ui/ZombieHead.png")
  spriteManager.sprites.ui.Reloading = love.graphics.newImage(assetsSpritesPath .. "ui/Reloading.png")
  spriteManager.sprites.ui.Button = love.graphics.newImage(assetsSpritesPath .. "ui/button.png")

  -- Level background images
  spriteManager.sprites.backgrounds.mainMenu = love.graphics.newImage("assets/sprites/background_mainMenu.png")
  spriteManager.sprites.backgrounds.survival = love.graphics.newImage("assets/sprites/background_road.png")
end

return spriteManager