require "Tamagotchi"
require "rspec"
require "pry"

describe(Tamagotchi)do
  describe('#initialize') do
    it('will create a new Tamagotchi and set the name and life level') do
      my_pet = Tamagotchi.new('Rex')
      expect(my_pet.name()).to(eq('Rex'))
      expect(my_pet.health()).to(eq(10))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(0))
    end
  end

  describe('#is_alive?') do
    it('is alive if health is > 0 ') do
      my_pet = Tamagotchi.new('Rex')
      expect(my_pet.is_alive?()).to(eq(true))
    end

    it('is dead if the food level is 0') do
      my_pet = Tamagotchi.new('Rex')
      my_pet.run()
      my_pet.crossfit()
      my_pet.set_food_level()
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end
end
