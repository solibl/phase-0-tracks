# Get client's name, age, number of children, decor theme, number of rooms.

client_info = []

puts "What is your name?"
client_info << gets.chomp

puts "What is your age?"
client_info << gets.to_i

puts "How many children?"
client_info << gets.to_i

puts "What is your decor theme?"
client_info << gets.chomp

puts "What is the number of rooms"
client_info << gets.to_i

p client_info

# Convert the user input to a data type
data = {}
counter = 0
until counter == client_info.length
    if counter == 0
    data[:name] = client_info[counter]
    elsif counter == 1
    data[:age] = client_info[counter] 
    elsif counter == 2
    data[:children] = client_info[counter]      
    elsif counter == 3
    data[:decor_theme] = client_info[counter]
    elsif counter == 4
    data[:rooms] = client_info[counter]
    end
  counter += 1
end

# Print the hash back out on screen when finished
p data

# Give user opportunity to correct a mistake
input = ""
until input == "Yes" || input == "No"
puts "Did you need to make any changes? (Yes/No)"
input = gets.chomp
end

if input == "Yes"
change = ""
  until change == "name" || change == "decor theme" || change == "age" || change == "children" || change == "rooms"
  puts "Choose from the following[name, age, children, decor theme, rooms]"
  change = gets.chomp
  end
change = change.tr(' ','_')
change = change.to_sym
    if change == :name || change == :decor_theme
    puts "Retype your change:"
    data[change] = gets.chomp
    elsif change == :age || change == :children || change == :rooms
    puts "Retype your change:"
    data[change] = gets.to_i
    end
elsif input == "No" 
puts "Have a great day!"
else
end

# Print the latest version of the information and exit program.
p data