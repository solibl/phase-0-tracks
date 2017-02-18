# OUR METHOD DECLARATIONS

# Get Password -> Identify first letter of password -> Change first letter to letter after in alphabet
# (a->b) -> Repeat for every letter in Password.

# Advances every letter of string one letter forward
def encrypt(password)
  index = 0
  # Loop over string letters
  while index < password.length
      # Accounting for spaces
      if password[index] == " "
      index += 1
      end
      # Account for Z edge case
      if password[index] == "z"
         password[index] = "a"
      end
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letterofpassword = password[index]
    position = alphabet.index(letterofpassword)
    position += 1
    password[index] = alphabet[position]
    index += 1
  end
  p password
end

# Get Password -> Identify first letter of password -> Change letter to letter before in alphabet 
# (b->a) -> Repeat for every letter in Password.

# Changes every letter of string to previous letter in alphabet
def decrypt(password)
  index = 0
  # Loop over string letter
  while index < password.length
    # Accounting for spaces
      if password[index] == " "
      index += 1
      end
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letterofpassword = password[index]
    position = alphabet.index(letterofpassword)
    position -= 1
    password[index] = alphabet[position]
    index += 1
  end
  p password
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))

# It will do the inside method first because it is a function.
# After it will run the outside method from the result of the inside method.
# Decrypt(encrypt("swordfish"))
# Decrypt("txpsegjti")
# Which would then become "swordfish"

# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
# Asks them for the password
# Conducts the requested operation, prints the result to the screen, and exits


# OUR DRIVER CODE

# Ask for method preference
puts "Do you want to decrypt or encrypt password?"
answer = gets.chomp

# Ask for password
puts "What is the password?"
input = gets.chomp

# Loop to account for all answers
counter = 0
while counter < 1
  # Run Decrypt if they use decrypt
  if (answer == "decrypt") || (answer == "Decrypt")
    decrypt(input)
    counter += 1
  # Run Encrypt if they use Encrypt
  elsif (answer == "encrypt") || (answer == "Encrypt")
    encrypt(input)
    counter += 1
  # Repeat until they answer correctly
  else 
    puts "Please answer with decrypt or encrypt"
    answer = gets.chomp
  end
end