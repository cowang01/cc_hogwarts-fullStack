require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/hogwarts')
also_reload('.models/hogwart')

get '/hogwarts' do
  @students = Student.view_all()
  erb(:index)
end

get '/hogwarts/create' do
  erb(:create)
end

post '/hogwarts' do
  @new_student = Student.new(params)
  @new_student.save()
  erb(:new)
end
