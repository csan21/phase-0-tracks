puts "What is your name?"
	name = gets.chomp

puts "How old are you? What year were you born?"
	age = gets.chomp
	birth_year = gets.chomp
	current_year = 2016

	if #{current_year} - #{birth_year} == #{age}
		age == true
	end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp

	if garlic_bread == "yes"
	end

puts "Would you like to enroll in the company's health insurance?"
	health_ins = gets.chomp

	if health_ins == "yes"
	end

if age && garlic_bread && health_ins == true
	puts "Probably not a vampire"
elsif age && garlic_bread && health_ins == false
	puts "Probably a vampire"
end