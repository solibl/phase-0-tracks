# How many people to survey
puts "How many people are we testing?"
people = gets.to_i
survey = 0
# Number of Survey Loops
until survey == people

#Questions of Survey

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.to_i

  puts "What year were you born?"
  year = gets.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  garlicbread = gets.chomp

  counter = 0
  until counter == 1
    if garlicbread == "Yes"
        counter = counter + 1
    elsif garlicbread == "No"
        counter = counter + 1
    else
        puts "Please answer the question as Yes or No"
        garlicbread = gets.chomp
    end
  end


  puts "Would you like to enroll in the company's health insurance? (Yes/No)"
  insurance = gets.chomp

  counter = 0
  until counter == 1
    if insurance == "Yes"
        counter = counter + 1
    elsif insurance == "No"
        counter = counter + 1
    else
        puts "Please answer the question as Yes or No"
        insurance = gets.chomp
    end
  end

# Allergy Sunlight Spotter
  vampire = 0
  allergycounter = 0
  until allergycounter == 1
    puts "What allergy do you have? (Type 'done' when finish)"
    allergy = gets.chomp
    if (allergy == "Sunshine") || (allergy == "sunshine") || (allergy == "sun") || (allergy == "Sun")
      puts "#{name}, Age = #{age}, DOB = #{year}, Garlic Bread = #{garlicbread}, Insurance = #{insurance}"
      puts "#{name} probably a vampire (Allergy to Sun)"
      allergycounter = allergycounter + 1
      vampire = vampire + 1
    elsif (allergy == "done")
      puts "#{name}, Age = #{age}, DOB = #{year}, Garlic Bread = #{garlicbread}, Insurance = #{insurance}"
      allergycounter = allergycounter + 1
    end
  end

# Vampire Calculator
  while vampire == 0
    if (name != "Drake Cula" && name != "Tu Fang" ) && (age == 2016 - year) && (garlicbread == "Yes" || insurance == "Yes")
      puts "#{name} probably not a vampire"
      vampire = vampire + 1
    elsif (name != "Drake Cula" && name != "Tu Fang" ) && (age != 2016 - year) && (garlicbread == "No" || insurance == "No")
      puts "#{name} probably a vampire"
      vampire = vampire + 1
    elsif (name != "Drake Cula" && name != "Tu Fang" ) && (age != 2016 - year) && garlicbread == "No" && insurance == "No"
      puts "#{name} almost certainly a vampire"
      vampire = vampire + 1
    elsif name == "Drake Cula" || name == "Tu Fang"
      puts "#{name} definitely a vampire"
      vampire = vampire + 1
    else
      puts "Results inconclusive"
      vampire = vampire + 1
    end
  end
  survey = survey + 1
end

puts "Actually, never mind! What do these questions have to do with anything?"
puts "Let's all be friends"