class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :cookie, :age
  def initialize(gender, ethnicity)
    p "Initializing Santa instance -------------"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @cookie = "Plain"
    @drunk = ["Hammered", "Tipsy", "Sober"]
  end

  def speak
    p "Ho, ho, ho! Haaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    p "That was a good #{cookie_type} cookie!"
    @cookie = cookie_type
  end

  def celebrate_birthday
    @age = 1
    p "Happy Birthday!"
  end

  def get_mad_at(mad_at)
    new_reindeer_ranking = @reindeer_ranking.index(mad_at)
    reindeer_ranking.delete_at(new_reindeer_ranking)
    reindeer_ranking << mad_at
  end

# getter methods for attributes

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end

  # def reindeer_ranking
  #   @reindeer_ranking
  # end

# setter methods for attributes

  # def gender=(new_gender)
  #   @gender = new_gender
  # end
end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# brian = Santa.new("male","Korean")
# brian.speak
# brian.eat_milk_and_cookies("Snickerdoodle")
# brian.age
# brian.celebrate_birthday
# p brian.reindeer_ranking
# brian.get_mad_at("Dancer")
# p brian.reindeer_ranking
# brian.gender = "female"
# p "#{brian.gender}"
# p "#{brian.age}"
# p "#{brian.ethnicity}"

# Driver Code
santas = []
reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
example_genders = ["Agender", "Female", "Bigender", "Male", "Robot"]
example_ethnicities = ["Black", "Latino", "White", "Japanese", "Korean", "Mystical Creature", "Indian", "Filipino", "Chinese", "Russian"]
cookie = ["Snickerdoodle", "Chocolate Chip", "Sugar", "Raisin", "Peanut Butter", "Macadamia Nut", "Oatmeal" ]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

100.times do |x|
  x += 1
  puts "Santa ##{x}"
  santas = Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "Your gender is #{santas.gender}"
  santas.age = rand(140)
  puts "Your age is #{santas.age}"
  santas.get_mad_at(reindeer.sample)
  puts "Your new favorite reindeer rankings:"
  puts " #{santas.reindeer_ranking}"
  puts "You say:"
  santas.speak
  santas.eat_milk_and_cookies(cookie.sample)
end