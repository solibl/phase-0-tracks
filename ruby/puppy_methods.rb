class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    p dog_years
  end

  def sit
    puts "*sits*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

duchess = Puppy.new
duchess.fetch("bone")

duchess.speak(2)

duchess.roll_over

duchess.dog_years(2)

duchess.sit

class Rapper
  def initialize(rap_name)
    puts "Put your hands together for ... #{rap_name}"
  end

  def flex(rap_name)
    puts "#{rap_name} is shining *bling bling*"
  end

  def represent
    puts "*throws up gang sign*"
  end
end

counter = 0
list_of_instances = []
list_of_names = []
loop do
  puts "What is your rapper name?"
  rapper_name = gets.chomp

  list_of_names<<rapper_name

  person = Rapper.new(rapper_name)

  list_of_instances<<person
  counter += 1
  break if counter == 50
end

counter = 0
list_of_instances.each do |rapper_instance|
  rapper_instance.flex(list_of_names[counter])
  rapper_instance.represent
  counter += 1
end