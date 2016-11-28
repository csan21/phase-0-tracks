# PSEUDOCODE

# ABOUT # A very simple money spending tracker for me (or other dbc students) 
# to use to monitor my spending habits during the on site portion. 

# INPUT - a decimal representing currency in usd
	# the first input creates a database for all inputs.
	# inputs are added to database regardless of closing program
# OUTPUT - 
	# user can list all spendings in numbered order
	# user can check total spent

# Currently not optimized for user input error

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

# Sum of inputs (cash) rounded to 2 decimal places
total_spent = <<-SQL
	SELECT ROUND(SUM(cash), 2) FROM spent;
SQL

spent_db.execute(create_table)

# Methods

def add_to_table(spent_db, decimal)
	spent_db.execute("INSERT INTO spent (cash) VALUES (?)", [decimal])
end

def print_table(list)
	puts "LIST OF AMOUNTS SPENT:"
	list.each { |idx, cash| puts "#{idx} - $ #{cash}"}
	puts "\n\n"
end

def update_item(spent_db)
	puts "Enter the id number for the amount you wish to update:"
	id = gets.chomp.to_i
	puts "Now enter a new amount:"
	new_amt = gets.chomp.to_f

	spent_db.execute("UPDATE spent SET cash='#{new_amt}' WHERE id='#{id}'")
	puts "Index #{id} was updated \n\n"
end

# TEST DB
# spent_db.execute("INSERT INTO spent (cash) VALUES (20.55)")
# spent_db.execute("INSERT INTO spent (cash) VALUES (8.25)")
# full_list = spent_db.execute(full_table)
# total = spent_db.execute(total_spent)
# p full_list

# USER INTERFACE

valid = false

	puts "\n\n"
	puts "-------------------------------------------------"
	puts "Welcome to my DBC student money spending tracker!" 
	puts "-------------------------------------------------"
	puts "\n\n"
	puts "        ENTER A NUMBER IN DECIMAL FORM" 
	puts "        TO REPRESENT ANY MONEY THAT YOU"
	puts "         SPENT TODAY (example: 120.00)"
	puts "         OR TYPE IN A COMMAND LISTED"
	puts "\n\n"
	puts "-- command list --"
	puts "Type 'list' to see a list of your spendings in order"
	puts "Type 'update' to choose an index from list to update"
	puts "Type 'total' to see your total spent"
	puts "Type 'quit' to exit when you're finished adding"
	puts "\n"
	puts "Type 'reset' to reset table"
	puts "\n\n"

until valid

	puts "ENTER a command or an amount to add:"
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
		puts "#{user_input} added to database \n\n"
		valid = false

	elsif user_input == "list"
		full_list = spent_db.execute(full_table)
		if full_list.empty?
			puts "Sorry the list is currently empty \n\n"
		else
			print_table(full_list)
		end
		valid = false

	elsif user_input == "update"
		update_item(spent_db)
		valid = false

	elsif user_input == "total"
		cash_total = spent_db.execute(total_spent)
		puts "TOTAL SPENT:"
		puts "$ #{cash_total.join} \n\n"
		valid = false

	elsif user_input == "quit"
		puts "Thanks for using the money tracker!"
		valid = true

	elsif user_input == "reset"
		puts "Are you sure you want to reset? (y/n)"
		confirm_reset = gets.chomp

		if confirm_reset == "y"
			spent_db.execute("DROP TABLE spent")
			puts "Table has been reset!"
			valid = true
		elsif confirm_reset == "n"
			puts "No reset was made \n\n"
			valid = false
		else
			puts "Invalid input - no reset was made \n\n"
			valid = false
		end

	else
		puts "Please enter a valid input"
		valid = false

	end

end

