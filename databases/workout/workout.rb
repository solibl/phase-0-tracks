# Require gems
require 'sqlite3'

# Create datatable
journal = SQLite3::Database.new("workouts.db")
journal.results_as_hash = true

create_user_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS users(
id INTEGER PRIMARY KEY,
name VARCHAR(255)
)
SQL

create_journal_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS daily_workouts(
id INTEGER PRIMARY KEY,
date VARCHAR(255),
hours INT,
muscle_group VARCHAR(255),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id)
)
SQL

journal.execute(create_journal_cmd)
journal.execute(create_user_cmd)


# Add new user to users table
def adduser(journal)
	puts "What is the username that you want to add?"
	user_name = gets.chomp.capitalize
	journal.execute("INSERT INTO users (name) VALUES (?)", [user_name])
end

def search_user(journal, user)
	users = journal.execute("SELECT * FROM Users")
	users.each do |users|
		if user == "#{users['name']}"
			user_number = "#{users['id']}"
			return user_number
		end
	end
end

# Method to list user names
def list_users(journal)
	users = journal.execute("SELECT * FROM Users")
	users.each do |users|
		puts "#{users['name']}"
	end
end

# Method to add workout to table
def addworkout(journal)
	puts "What is the user_name that you want to add a workout for? (Type 'List' to print users)"
	user_name = gets.chomp.downcase
	if user_name == "list"
		puts "Users that have a Daily Workout Journal:"
		list_users(journal)
		puts "\n"
		puts "Enter the name of the User you want"
		user_name = gets.chomp
	end
	user_number = search_user(journal, user_name.capitalize).to_i
	puts "What is the date of workout?(Format: 'M/D/Y')"
	workout_date = gets.chomp
	puts "How many hours did you workout?(Format: '3')"
	workout_hours = gets.to_i
	puts "What muscle_group did you workout? (Arms, Legs, Chest, Back, Cardio, Abs)"
	workout_muscle = gets.chomp.downcase
	until workout_muscle == "arms" || workout_muscle == "legs" || workout_muscle == "chest" || workout_muscle == "back" || workout_muscle == "cardio" || workout_muscle == "abs"  
		puts "Please choose between (Arms, Legs, Chest, Back, Cardio, Abs)"
		workout_muscle = gets.chomp.downcase
	end	
	journal.execute("INSERT INTO daily_workouts (date, hours, muscle_group, user_id) VALUES (?, ?, ?, ?)", [workout_date, workout_hours, workout_muscle, user_number])
end

# Method to Print Users Workouts
def print(journal)
	puts "What is the user_name that you want to add a workout for? (Type 'List' to print users"
	user_name = gets.chomp.downcase
	if user_name == "list"
		puts "Users that have a Daily Workout Journal:"
		list_users(journal)
		puts "\n"
		puts "Enter the name of the User you want"
		user_name = gets.chomp
	end
	user_number = search_user(journal, user_name.capitalize).to_i
	workouts = journal.execute("SELECT * FROM daily_workouts WHERE daily_workouts.user_id = #{user_number}")
	journal_user = journal.execute("SELECT users.name FROM users WHERE users.id = #{user_number}")
	puts journal_user[0]["name"]+":"
	workouts.each do |workouts|
		puts "On #{workouts['date']}, you worked on #{workouts['muscle_group']} for #{workouts['hours']} hours"
	end
end


# <-------------------------------------- DRIVER CODE -------------------------------------------->
# Get user to select option of menu: Add workout day, search by date or area of workout
menu = ""
until menu == "exit"
	puts "What would you like to do today? (New User, Add, Print, Exit)"
	menu = gets.chomp.downcase 
# Get user to input date, hours of workout, area of workout
if menu == "new user"
	adduser(journal)
elsif menu == "add"
	addworkout(journal)
elsif menu == "print"
	print(journal)
elsif menu == "exit"
	break
else 
	puts "Please choose between 'Add User' or 'Add' or 'Search' or 'Exit'"
end
end



