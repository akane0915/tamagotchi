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

  describe('#sleep') do
    it('resets activity_level to zero when Tamagotchi sleeps') do
      my_pet = Tamagotchi.new('Rex')
      my_pet.surf()
      my_pet.sleep()
      expect(my_pet.activity_level()).to(eq(0))
    end

    it('subtracts 5 from food level when Tamagotchi sleeps') do
      my_pet = Tamagotchi.new('Rex')
      my_pet.sleep()
      expect(my_pet.food_level()).to(eq(5))
    end
  end

  describe('#update_health') do
    it('subtracts 2 from the health if food level drops below 5') do
      my_pet = Tamagotchi.new('Rex')
      my_pet.crossfit()
      my_pet.update_health()
      expect(my_pet.health()).to(eq(8))
    end
  end


end
