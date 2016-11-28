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

# TEST DB
# spent_db.execute("INSERT INTO spent (cash) VALUES (20.55)")
# spent_db.execute("INSERT INTO spent (cash) VALUES (8.25)")
# puts "Total spent: #{total} USD"
# p full_list

# USER INTERFACE
