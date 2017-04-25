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
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
end
