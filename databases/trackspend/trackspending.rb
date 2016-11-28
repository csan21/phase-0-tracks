# PSEUDOCODE

# ABOUT # A simple money spending tracker for me (or other dbc students) 
# to use to monitor my spending habits during the on site portion. 

# INPUT - a decimal representing currency in usd
	# the first input creates a database for all inputs.
	# inputs are added to database regardless of closing program
# OUTPUT - the total spent so far is updated for every new input.

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
full_list = spent_db.execute(full_table)
total = spent_db.execute(total_spent)

# def input_check(input)
# 	if input.include? decimal
# end

# TEST DB
# spent_db.execute("INSERT INTO spent (cash) VALUES (20.55)")
# spent_db.execute("INSERT INTO spent (cash) VALUES (8.25)")
# puts "Total spent: #{total} USD"
# p full_list

# USER INTERFACE
until valid

	puts "Welcome to my DBC student money spending tracker! \n\n"
	puts "- MENU -"
	puts "Type 'total' to see your total spent"
	puts "Type 'list' to see a list of your spendings in order"
	puts "Type 'quit' to exit when you're finished adding \n\n"
	puts "ENTER what you've spent today:"
	input = gets.chomp.to_f

end






