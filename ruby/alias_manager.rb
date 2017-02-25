# 5.5 Solo Challenge

# 1. Swapping the first and last name.
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants 
# 3. (everything else besides the vowels) to the next consonant in the alphabet. 
#    So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

Agent = {}
# Get the Spy's Full Name
loop do
puts "Spy, What is your name? ('quit' to exit)"
userinput = gets.chomp.downcase
break if userinput == 'quit'

# Swap the last and First Name
swapname = userinput.split(' ').reverse.join(' ')

# Create a method to change the vowel to the next vowel in question
def vowel(vowel_letter)
  vowel = "aeiou"
  current_location = vowel.index(vowel_letter)
  new_vowel = current_location + 1
  if vowel.index(vowel_letter) == 4
    results = vowel[0]
  else
    results = vowel[new_vowel]
  end
  results
end

# Create a method to change the consonant to the next consonant next
def consonants(consonants_letter)
  consonants = "bcdefghjklmnpqrstvwxyz"
  current_location = consonants.index(consonants_letter)
  new_consonants = current_location + 1
  if consonants.index(consonants_letter) == 21
    results = "b"
  else
    results = consonants[new_consonants]
  end
  results
end

# Executing each letter to be changed into the methods
letters = swapname.split('')
letters.map! do |letter|
  if "aeiou".include?(letter)
    vowel(letter)
  elsif "bcdefghjklmnpqrstvwxyz".include?(letter)
    consonants(letter)
  else
    letter
  end
end

# Join the letters to make it into the word again for codename
join_letters = letters.join('')

# Capitalize first letter of the code name
seperate_codename = join_letters.split(' ')
seperate_codename.map! {|name| name.capitalize}
final_codename = seperate_codename.join(' ')

# Capitalize first letter of the full name
userinput = userinput.split(' ')
capitalized_userinput = userinput.map! {|name| name.capitalize}
final_username = capitalized_userinput.join(' ')

# Add final full name and code name to the Agent Hash
Agent[:fullname] = final_username
Agent[:Codename] = final_codename

# Print final code name to user
puts "#{Agent[:fullname]}'s codename is #{Agent[:Codename]}"
end