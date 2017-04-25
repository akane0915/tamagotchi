require 'sinatra'
require 'sinatra/reloader'
require './lib/Tamagotchi'
require 'pry'
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  @name = params.fetch('name')
  @@my_pet = Tamagotchi.new(@name)
  erb(:output)
end

get('/feed') do
  @@my_pet.feed()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end

get('/sleep') do
  @@my_pet.sleep()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end

get('/walk') do
  @@my_pet.walk()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end

get('/run') do
  @@my_pet.run()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end

get('/surf') do
  @@my_pet.surf()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end

get('/crossfit') do
  @@my_pet.crossfit()
  @food = @@my_pet.food_level()
  @sleep = @@my_pet.sleep_level()
  @activity = @@my_pet.activity_level()
  if @@my_pet.is_alive?() == false
    @dead = "Your pet is dead!"
  end
  @dead
  erb(:output)
end
