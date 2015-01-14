class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:name) do
    @name
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

  define_method(:time_passes) do |time_units|
    time_units.times() do
      @food_level = @food_level.-(1)
      @activity_level = @activity_level.-(1)
      @sleep_level = @sleep_level.-(1)
    end
  end

  define_method(:add_food) do
    if @food_level < 25
    @food_level = @food_level.+(1)
    else
      "Your pet has eaten itself to death"
    end
  end

  define_method(:is_alive?) do
    if @food_level==0
      false

    else
      true
    end
  end
end
