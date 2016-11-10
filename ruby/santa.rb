class Santa

	def initialize(gender, ethnicity, age)
		puts "creating a santa..."
		@gender = gender
		@ethnicity = ethnicity
		@age = age
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

end

# Chris = Santa.new('male', 'yellow', '28')
# p Chris

santas = []
genders = ['male', 'female', 'agender', 'bigender', 'N/A', 'no label']
ethnicities = ['white', 'black', 'yellow', 'brown', 'purple', 'green', 'multi']
age = (0..140).to_a


