puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "What is the hamster's volume level from 1 to 10?"
volume_level = gets.chomp.to_i
while volume_level >= 11
  puts "Choose a number from 1 to 10?"
  volume_level = gets.chomp.to_i
end
while volume_level == 0
  puts "Please enter a number 1-10."
  puts "What is the hamster's volume level from 1 to 10?"
  volume_level = gets.chomp.to_i
end
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption? (y/n)"
candidate = gets.chomp
counter = 0
until counter == 1
  if candidate == "y"
    good = true
    counter = counter + 1
  elsif candidate == "n"
    good = false
    counter = counter + 1
  else
    puts "Please enter y or n."
    candidate = gets.chomp
  end
end
puts "What is the estimated age of the hamster (if applicable, otherwise leave blank)"
estimated_age = gets.chomp.to_i
if estimated_age == 0 
  estimated_age = nil
end
if estimated_age == nil
  estimated_age = "N/A"
end
puts "Hamster name: #{hamster_name}"
puts "Volume Level: #{volume_level}"
puts "Fur Color: #{fur_color}"
puts "Good candidate?: #{good}"
puts "Estimated Age: #{estimated_age}"