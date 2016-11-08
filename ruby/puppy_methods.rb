# Worked with Mhar Andal

class Puppy

  def initialize()
  	puts "New dog"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times { puts "woof"}
  end

  def rollover
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	dog_year = 7 * human_age
  	p dog_year
  end

end

class Person

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		puts "#{name}, welcome to the system!"
	end

	def birthday
		@age += 1
	end

	def printInfo
		puts "{name} is #{gender} and {age} years old"
	end



end

shibainu = Puppy.new
shibainu.fetch("ball")
shibainu.speak(5)
shibainu.rollover
shibainu.dog_years(28)

name = ['Mhar', 'Chris', 'Danny', 'Ashley', 'Rick', 'Bob']
people = []
gender = ['Male', 'Female']
age = (0..30).to_a

50.times { people << Person.new(name.sample, age.sample, gender.sample) }

p people
