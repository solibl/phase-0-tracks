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
students_array = [
  "Bob",
  "Sally",
  "Jim",
  "Anna"
]

students_hash = {
  name: "Bob",
  gender: "Male"
}

# Array

# .each
p students_array
students_array.each { |name| puts "#{name} is here" }
p students_array

# .map
p students_array
nickname = students_array.map { |student| 
  puts student
  student = student.next
}
p students_array
p nickname

# .map!
p students_array
students_array.map! { |student| 
  puts student
  student = student.next
}
p students_array

# Hash

# .each
p students_hash
students_hash.each { |key, value|
  puts "#{key} is #{value}"
}
p students_hash

# .map
p students_hash
students_hash.map { |key, value|
  value = value.upcase
  p value
  }
p students_hash

# Release 2

# Number 1
# Array
numbers = [14, 56, 0, 484, 3]
p numbers
counter = 0
while  counter < numbers.length 
  if numbers[counter] < 5
    numbers.delete_at(counter)
  end
  counter += 1
end
p numbers

# Hash
labeled_items = {
  "a" => 2,
  "b" => 3,
  "c" => 5,
  "d" => 100
}

labeled_items.delete_if {|key, value| key < "c"}
p labeled_items

# Number 2
# Array
numbers2 = [1, 6, 4, 0, 15, 3, 60]
p numbers2

filtered = numbers2.select do |less|
less < 5
end

p filtered

# Hash
labeled_items = {
  "a" => 2,
  "b" => 3,
  "c" => 5,
  "d" => 100
}

p labeled_items.select {|key, value| key < "c"}

# Number 3
# Array
numbers3 = [1, 6, 4, 0, 15, 3, 60]
p numbers3

filtered = numbers3.delete_if do |less|
less > 5
end
p filtered

# Hash
labeled_items = {
  "a" => 2,
  "b" => 3,
  "c" => 5,
  "d" => 100
}
p labeled_items.reject {|key, value| value > 5}

# Number 4
data_structure = [16,52,123,245,124,731,6,1]
p data_structure
counter = 0
while data_structure[counter] <= 550
    data_structure.delete_at(counter)
end
p data_structure