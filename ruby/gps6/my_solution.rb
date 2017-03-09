# Virus Predictor

# I worked on this challenge [with: Matthias].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative will pull the file needed for the code for this file.
# Require looks through the paths to find the file needed such as a gem or library.
require_relative 'state_data'

class VirusPredictor
# Start an instance of the class with the following parameters values assigned to variables that can be accessed throughout the class.
  def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density
  end
# Method calling two other methods

  def virus_effects
  predicted_deaths
  speed_of_spread
  end

  private
# Method to calculate predicted deaths
  def predicted_deaths
  # predicted deaths is solely based on population density
  # if @population_density >= 200
  # number_of_deaths = (@population * 0.4).floor
  # elsif @population_density >= 150
  # number_of_deaths = (@population * 0.3).floor
  # elsif @population_density >= 100
  # number_of_deaths = (@population * 0.2).floor
  # elsif @population_density >= 50
  # number_of_deaths = (@population * 0.1).floor
  # else
  # number_of_deaths = (@population * 0.05).floor
  # end
  deaths = {
    200 => 0.4,
    150 => 0.3,
    100 => 0.2,
    50 => 0.1,
    0 => 0.05
  }
  deaths.each do |den_tresh, deth_multiply|
    if @population_density >= den_tresh 
      number_of_deaths = (@population * deth_multiply).floor
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
      break
    end
  end

  #print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Method to calculate speed of spread.
  def speed_of_spread #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  # speed = 0.0

  # if @population_density >= 200
  # speed += 0.5
  # elsif @population_density >= 150
  # speed += 1
  # elsif @population_density >= 100
  # speed += 1.5
  # elsif @population_density >= 50
  # speed += 2
  # else  
  # speed += 2.5
  # end
#   end

  speed_virus = {
    200 => 0.5,
    150 => 1,
    100 => 1.5,
    50 => 2,
    0 => 2.5
  }
  speed_virus.each do |den_tresh, deth_multiply|
    if @population_density >= den_tresh       
      puts " and will spread across the state in #{deth_multiply} months.\n\n"
      break
    end
  end
end 
end

  
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


 alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
 alabama.virus_effects

 jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
 jersey.virus_effects

 california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
 california.virus_effects

 alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
 alaska.virus_effects


STATE_DATA.each do |state_name, state_data|
  state = VirusPredictor.new(state_name, state_data[:population_density], state_data[:population])
  state.virus_effects
end



#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# Symbols are used for strings without spaces. Ex population_density: 94.65
# You can use string with spaces and integers. Ex 200 => 0.5

# What does require_relative do? How is it different from require?
# Require relative will pull the file needed for the code for this file.
# Require looks through the paths to find the file needed such as a gem or library.

# What are some ways to iterate through a hash?
# You can use .each do also you can use .map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables were constants so that didn't needed to be on each line

# What concept did you most solidify in this challenge?
# Learning to use hashes and iterate through them