# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
	@students = db.execute("SELECT * FROM students")
	erb :home
end

get '/students/new' do
	erb :new_student
end

get '/campus' do
	@students_sf = db.execute("SELECT * FROM students WHERE campus = 'SF'")
	@students_sd = db.execute("SELECT * FROM students WHERE campus = 'SD'")
	@students_nyc = db.execute("SELECT * FROM students WHERE campus = 'NYC'")
	@students_chi = db.execute("SELECT * FROM students WHERE campus = 'CHI'")
	@students_sea = db.execute("SELECT * FROM students WHERE campus = 'SEA'")
	erb :campus
end

get '/update' do
	erb :update
end

# create new students via
# a form
post '/students' do
	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
	redirect '/'
end


post '/updatedcampus' do
	db.execute("UPDATE students SET campus=? WHERE name=?", [params[:newcampus], params[:name]])
	redirect '/campus'
end
# add static resources