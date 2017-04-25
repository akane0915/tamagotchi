class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @health = 10
    @food_level = 10
    @sleep_level = 10
    @activity_level = 0
  end

  define_method(:name) do
    @name
  end

  define_method(:health) do
    @health
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

  define_method(:is_alive?) do
    @food_level > 0
  end

  define_method(:set_food_level) do
    if @activity_level < 3
      @food_level =- 2
    elsif @activity_level < 5
      @food_level =- 4
    elsif @activity_level < 8
      @food_level =- 6
    else
      @food_level =- 10
    end
  end

  define_method(:walk) do
    @activity_level += 2
  end

  define_method(:run) do
    @activity_level += 4
  end

  define_method(:surf) do
    @activity_level += 7
  end

  define_method(:crossfit) do
    @activity_level += 10
  end


end
