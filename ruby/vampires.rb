puts "How many employees will be processed?"
	employee_count = gets.chomp.to_i
	while counter < employee_count

		puts "What is your name?"
			name = gets.chomp

		puts "How old are you? What year were you born?"
			age = gets.chomp.to_i
			birth_year = gets.chomp.to_i
			current_year = 2016

			if age = current_year - birth_year
				correct_age = true
			else
				correct_age = false
			end

		puts "Our company cafeteria serves garlic bread. Should we order some for you?"
			garlic_bread = gets.chomp

			if garlic_bread == "yes"
				likes_garlic = true
			else
				likes_garlic = false
			end

		puts "Would you like to enroll in the company's health insurance?"
			health = gets.chomp

			if health == "yes"
				health_ins = true
			else
				health_ins = false
			end

	counter += 1
	end

if correct_age && (likes_garlic || health_ins) == true
	puts "Probably not a vampire"
elsif correct_age || likes_garlic || health_ins == true
	puts "Probably a vampire"
elsif correct_age || likes_garlic || health_ins == false
	puts "Almost certainly a vampire."
else 
	puts "Results are inconclusive"
end