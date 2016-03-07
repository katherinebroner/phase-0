# Virus Predictor

# I worked on this challenge with Ben Heidebrink.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# see reflection
#
require_relative 'state_data'

#Initial Solution
=begin
class VirusPredictor
  # Initializes instance of class with instance variables @state, @population and @ pop. density
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Pulls in returned values from predicted_deaths and speed_of_spread methods
  # Is an instance method of the class, operates on instance of the class
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # Calculates deaths based upon decimal determined by population density and multiplying by population. Prints out string describing predicted deaths of state
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Based on the population density, the speed of spread is calculated
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
=end

#Refactored Solution

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  def predicted_deaths()
    multiplier = -0.1
    if @population_density >= 50
      (0..@population_density).step(50) {multiplier += 0.1}
      number_of_deaths = (@population * multiplier).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread()
    speed = 3.0
    if @population_density <= 200
      (0..@population_density).step(50) {speed -= 0.5}
    else
      speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

def all_states(list)
  list.each do |key, value|
    VirusPredictor.new(key, value[:population_density], value[:population]).virus_effects
  end
end

all_states(STATE_DATA)

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file? The initial key in the hash assigns the value to the inner hash using the "=>" symbol. The inner hash syntax uses the symbol "population: 50", which automatically creates a key/value pair.


What does require_relative do? How is it different from require?   Require relative pulls in the related file contained within the directory.  Both the solution file and related file are in the same directory. This is a shortened file path and only requires the name of the related file.
Require is relative to the current directory, but the entire file path needs to be specified.

What are some ways to iterate through a hash?  To iterate through a hash, you would use the .each method and specify the key and value. You then specify what action you want the function to perform on the hash items.

When refactoring virus_effects, what stood out to you about the variables, if anything?  Because the variables were initialized in the beginning of the class, we did not need to pass the variables through as an argument.

What concept did you most solidify in this challenge?  I learned about the importance of keeping your code dry and leaving out variables as arguments if they are not necessary. I also learned how to iterate through a hash while calling a new instance of a class. My partner introduced the step method, which helped us in our refactoring.



=end