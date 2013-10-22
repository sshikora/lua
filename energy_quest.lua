energy_quest = {}
player = {
  isAtX = 0,
  isAtY = 0,
  energy = 50
}

map = {
  foodx = 0,
  foody = 0,
  max_x = 4,
  max_y = 4
}

function map:set_food() 
  foodx = math.random(0, map.max_x)
  foody = math.random(0, map.max_y)
end

function map:print() 
  for y = 0,map.max_y do
    for x = 0,map.max_x do
      if player.isAtX == x and player.isAtY == y then
        io.write(" X ")
      else
        io.write(" _ ")
      end
    end
    io.write("\n")  
  end
end

function player:set_map_loc() 
  player.isAtX = math.random(map.max_x)
  player.isAtY = math.random(map.max_y)  
end

math.randomseed(os.time())
player.set_map_loc()
map.set_food()
map.print()