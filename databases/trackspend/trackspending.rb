# PSEUDOCODE

# ABOUT # A simple money spending tracker for me (or other dbc students) 
# to use to monitor my spending habits during the on site portion. 

# INPUT - a decimal representing currency in usd
	# the first input creates a database for all inputs.
# OUTPUT - the total spent so far is updated for every new input.

require 'sqlite3'

spent_db = SQLite3::Database.new("spent.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS spent(
		id INTEGER PRIMARY KEY,
		cash DECIMAL
	)
SQL

spent_db.execute(create_table_cmd)

# TEST DB
spent_db.execute("INSERT INTO spent (cash) VALUES (20.55)")
spent_db.execute("INSERT INTO spent (cash) VALUES (8.25)")