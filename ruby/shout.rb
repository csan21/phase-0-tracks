module Shout

	def scream(words)
		puts words + "!!!!!"
	end

end

class Person
	include Shout
end

class Dog
	include Shout
end

person = Person.new
person.scream('FETCH IT')

dog = Dog.new
dog.scream('NO THANKS')

# module Shout

# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# Shout.yell_angrily("GO AWAY")
# Shout.yelling_happily("COME BACK")