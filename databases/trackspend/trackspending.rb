# PSEUDOCODE

# ABOUT # A very simple money spending tracker for me (or other dbc students) 
# to use to monitor my spending habits during the on site portion. 

# INPUT - a decimal representing currency in usd
	# the first input creates a database for all inputs.
	# inputs are added to database regardless of closing program
# OUTPUT - 
	# user can list all spendings in numbered order
	# user can check total spent

# Currently not optimized for user error

# BUSINESS LOGIC

require 'sqlite3'

spent_db = SQLite3::Database.new("spent.db")

create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS spent(
		id INTEGER PRIMARY KEY,
		cash DECIMAL
	)
SQL

full_table = <<-SQL
	SELECT * FROM spent;
SQL

total_spent = <<-SQL
	SELECT ROUND(SUM(cash), 2) FROM spent;
SQL

spent_db.execute(create_table)

# Methods

def add_to_table(spent_db, decimal)
	spent_db.execute("INSERT INTO spent (cash) VALUES (?)", [decimal])
end

def print_table(list)
	puts "Full list:"
	list.each { |idx, cash| puts "#{idx}: #{cash}"}
end

# TEST DB
# spent_db.execute("INSERT INTO spent (cash) VALUES (20.55)")
# spent_db.execute("INSERT INTO spent (cash) VALUES (8.25)")
# full_list = spent_db.execute(full_table)
# total = spent_db.execute(total_spent)
# p full_list

# USER INTERFACE

valid = false

	puts "Welcome to my DBC student money spending tracker! \n\n"
	puts "- MENU -"
	puts "Type 'list' to see your total spent"
	puts "Type 'total' to see a list of your spendings in order"
	puts "Type 'quit' to exit when you're finished adding \n\n"

until valid

	puts "ENTER what you've spent today: (decimal)"
	user_input = gets.chomp
	puts ""

	# if (user_input =~ /^-?[0-9]+$/) && (user_input.include? ".")
	# 	add_to_table(spent_db, user_input)
	# 	valid = false
	
	# if (user_input.is_a?(Float) == true)
	# 	add_to_table(spent_db, user_input)
	# 	valid = false

	# Attempted a few different variations to get a working "if"
	# Will refactor later, implemented simple code that doesn't 
	# account for for user error atm.

	if user_input.include? "."
		add_to_table(spent_db, user_input)
		valid = false

	elsif user_input == "list"
		full_list = spent_db.execute(full_table)
		print_table(full_list)
		valid = false

	elsif user_input == "total"
		total = spent_db.execute(total_spent)
		puts total
		valid = false

	elsif user_input == "quit"
		puts "Thanks for using the money tracker!"
		valid = true

	else user_input.include? letters
		puts "Please enter a valid input"
		valid = false

	end

end

