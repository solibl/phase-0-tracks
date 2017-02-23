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
  "Bob" => 'Boy',
  "Sally" => 'Girl',
  "Jim" => 'Boy',
  "Anna"  => 'Girl',
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
Students_Hash.each { |name, gender| puts "#{name} is a #{gender}" }
p Students_Hash

# .map
p Students_Hash
Nickname2 = Students_Hash.map { |student, gender| 
  puts "#{student} is a #{gender}"
  student = student.next
}
p Nickname2

# Release 2

# Number 1
Numbers = [14, 56, 0, 484, 3]
puts Numbers
counter = 0
while  counter < Numbers.length 
  if Numbers[counter] < 5
    Numbers.delete_at(counter)
  end
  counter += 1
end
puts Numbers