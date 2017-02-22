# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# Case 1
"iNvEsTiGaTiOn".swapcase
=> “InVeStIgAtIoN”

# Case 2
"zom".insert(2, 'o')
=> “zoom”

# Case 3
# Suspect 1
"enhance".rjust(11).ljust(15)
=> "    enhance    "
# Suspect 2
"enhance".center(15)
=> "    enhance    "

# Case 4
"Stop! You’re under arrest!".upcase
=> "STOP! YOU’RE UNDER ARREST!"

# Case 5
"the usual".ljust(18, " suspects")
=> "the usual suspects"

# Case 6

# Suspect 1
" suspects".rjust(18, "the usual")
=> "the usual suspects"
# Suspect 2
a = " suspects"
a.prepend("the usual")
=> "the usual suspects"

# Case 7
"The case of the disappearing last letter".chop
=> "The case of the disappearing last lette"

# Case 8
"The mystery of the missing first letter".delete "T"
=> "he mystery of the missing first letter"

# Case 9
"Elementary,    my   dear        Watson!".squeeze(" ")
=> "Elementary, my dear Watson!"

# Case 10
"z".ord
=> 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII of z

# Case 11
"How many times does the letter 'a' appear in this string?".count "a"
=> 4