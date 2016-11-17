# Virus Predictor

# I worked on this challenge [by myself, with: Daniel Karagiannis ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links the path to relative file starting within the file
# require is going to start looking in the load path
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling two separate methods for virus prediction (delegator method)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # calculates predicted deaths based on population and population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates the speed of virus spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_info|
  VirusPredictor.new(state, state_info[:population_density], state_info[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
## STATE DATA hash had a key and value, but the value was also a nested hash with a key and value

# What does require_relative do? How is it different from require?
## require_relative provides access to file within the same directory, require provides access to a library

# What are some ways to iterate through a hash?
## .each method for both the keys and values or each_key / each_value separately

# When refactoring virus_effects, what stood out to you about the variables, if anything?
## they were already defined outside of virus_effects method

# What concept did you most solidify in this challenge?
## scope, accessing nested hashes, delegator method.