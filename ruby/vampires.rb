puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
garlicbread = gets.chomp

puts "Would you like to enroll in the company's health insurance? (Yes/No)"
insurance = gets.chomp

puts "#{name}, #{age}, #{year}, #{garlicbread}"
