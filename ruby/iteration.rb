# Release 0
# def age
#   current_year = 2017
#   puts "What year were you born?"
#   born = gets.to_i
#   userage = current_year - born 
#   puts "This is before running block"
#   yield (userage)
#   puts "This is after running block"
# end

# age {|userage| puts "Your age is #{userage}" }

# Release 1
Students_Array = [
  "Bob",
  "Sally",
  "Jim",
  "Anna"
]

Students_Hash = {
  Name: "Bob",
  Gender: "Male"
}

# Array

# .each
p Students_Array
Students_Array.each { |name| puts "#{name} is here" }
p Students_Array

# .map
p Students_Array
Nickname = Students_Array.map { |student| 
  puts student
  student = student.next
}
p Students_Array
p Nickname

# .map!
p Students_Array
Students_Array.map! { |student| 
  puts student
  student = student.next
}
p Students_Array

# Hash

# .each
p Students_Hash
Students_Hash.each { |key, value|
  puts "#{key} is #{value}"
}
p Students_Hash

# .map
p Students_Hash
Students_Hash.map { |key, value|
  value = value.upcase
  p value
  }
p Students_Hash

# Release 2

# Number 1
Numbers = [14, 56, 0, 484, 3]
p Numbers
counter = 0
while  counter < Numbers.length 
  if Numbers[counter] < 5
    Numbers.delete_at(counter)
  end
  counter += 1
end
p Numbers

# Number 2
Numbers2 = [1, 6, 4, 0, 15, 3, 60]
p Numbers2

filtered = Numbers2.select do |less|
less < 5
end

p filtered

# Number 3

Numbers3 = [1, 6, 4, 0, 15, 3, 60]
p Numbers3

filtered = Numbers3.delete_if do |less|
less > 5
end

p filtered

# Number 4
Data_structure = [16,52,123,245,124,731,6,1]
p Data_structure
counter = 0
while Data_structure[counter] <= 550
    Data_structure.delete_at(counter)
end

p Data_structure