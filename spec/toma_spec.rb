require('rspec')
require('toma')
require('pry')

describe("Tamagotchi") do
  describe("#initialize") do
    it("sets the name and a few other properties") do
      my_pet = Tamagotchi.new("Digital Friend")
      expect(my_pet.name()).to(eq("Digital Friend"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Digital Friend")
      my_pet.time_passes(1)
      expect(my_pet.food_level()).to(eq(9))
    end
    it("decreases the amount of activity the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Digital Friend")
      my_pet.time_passes(1)
      expect(my_pet.activity_level()).to(eq(9))
    end
    it("decreases the amount of sleep the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("Digital Friend")
      my_pet.time_passes(1)
      expect(my_pet.sleep_level()).to(eq(9))
    end
  end

  describe('#add_food') do
    it('allows you to feed the Tamagotchi') do
      my_pet = Tamagotchi.new("Digital Friend")
      my_pet.add_food()
      expect(my_pet.food_level()).to(eq(11))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("Digital Friend")
      expect(my_pet.is_alive?()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("Digital Friend")
      my_pet.time_passes(10)
      expect(my_pet.is_alive?()).to(eq(false))
    end
  end
end
