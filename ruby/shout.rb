# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " ^_^"
#   end
# end

# # Driver Code
# Shout.yell_angrily("Bullocks")
# Shout.yelling_happily("Happy Birthday")

module Shout
    def happily(words)
      puts words + "!"
    end
    def sadly(words)
      puts words + " *tear falling*"
    end
    def angry(words)
      puts words + "!" + " >;["
    end
end

class Person
  include Shout
end

class Animal
  include Shout
end

# Driver Code
Brian = Person.new
Brian.happily("I'm young again")
Brian.sadly("I'm turning 30")
Brian.angry("I'm getting old")

dino = Animal.new
dino.happily("It's time to eat")
dino.sadly("Where are you?")
dino.angry("I'm going to poop in your bed")