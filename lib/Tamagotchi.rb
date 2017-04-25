class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @health_level = 10 #effected by food, sleep, activity
    @food_level = 10 #effected by feeding, activity, sleep, time
    @sleep_level = 10 #effected by sleep, time
    @activity_level = 0 #effected by sleep, walk, run, surf, xfit
  end

###############################
#Define instance variables
  define_method(:name) do
    @name
  end

  define_method(:health_level) do
    @health_level
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

###############################
#Levels are being updated

  define_method(:update_time) do
    @food_level -= 1
    @sleep_level -= 1
  end

  define_method(:update_food_level) do
    if @activity_level < 3
      @food_level -= 2
    elsif @activity_level < 5
      @food_level -= 4
    elsif @activity_level < 8
      @food_level -= 6
    else
      @food_level -= 10
    end
    self.update_health_level()
  end

  define_method(:update_health_level) do
    if @food_level < 5
       @health_level -= 2
    end
    if @sleep_level < 2
      @health_level -= 3
    end
    if @activity_level < 3
      @health_level -= 1
    end
  end
###############################
#Tamagotchi is doing things
#Eat
  #Need feed method
  define_method(:feed) do
    @food_level += 3
    self.update_time()
  end

#Sleep
define_method(:sleep) do
  @activity_level = 0
  @food_level -= 4
  @sleep_level += 6
  self.update_time()
  self.update_health_level()
end

#Activities
  define_method(:walk) do
    @activity_level += 2
    self.update_food_level()
    self.update_time()
  end

  define_method(:run) do
    @activity_level += 4
    self.update_food_level()
    self.update_time()
  end

  define_method(:surf) do
    @activity_level += 7
    self.update_food_level()
    self.update_time()
  end

  define_method(:crossfit) do
    @activity_level += 10
    self.update_food_level()
    self.update_time()
  end

###############################

  define_method(:is_alive?) do
    @food_level > 0 && @health_level > 0
  end

end
