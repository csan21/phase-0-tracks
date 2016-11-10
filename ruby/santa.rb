class Santa

	def initialize(gender, ethnicity, age)
		puts "creating a santa..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(type)
		puts "That was a good #{type} cookie!"
	end

	def celebrate_birthday
		@age += 1
		@age
	end

	def get_mad_at(reindeer)
		puts "move to back of the line #{reindeer}!"
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index("#{reindeer}")))
		p @reindeer_ranking
	end

	# /getters/
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# /setters/
	# def gender=(gender)
	#   @gender = gender
	# end

end

# Chris = Santa.new('male', 'yellow', '28')
# Chris.speak
# Chris.eat_milk_and_cookies('oreo')
# Chris.get_mad_at('Rudolph')

santas = []
genders = ['male', 'female', 'agender', 'bigender', 'N/A', 'no label']
ethnicities = ['white', 'black', 'yellow', 'brown', 'purple', 'green', 'multi']
age = (0..140).to_a


