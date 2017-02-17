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

# puts "#{name}, #{age}, #{year}, #{garlicbread}, #{insurance}"

# Vampire Calculator
if (name != "Drake Cula" && name != "Tu Fang" ) && (age == 2016 - year) && (garlicbread == "Yes" || insurance == "Yes")
  puts "#{name} probably not a vampire"
elsif (name != "Drake Cula" && name != "Tu Fang" ) && (age != 2016 - year) && (garlicbread == "No" || insurance == "No")
  puts "#{name} probably a vampire"
elsif (name != "Drake Cula" && name != "Tu Fang" ) && (age != 2016 - year) && garlicbread == "No" && insurance == "No"
  puts "#{name} almost certainly a vampire"
elsif name == "Drake Cula" || name == "Tu Fang"
  puts "#{name} definitely a vampire"
else
  puts "Results inconclusive"
end
