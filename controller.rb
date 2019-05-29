require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/hogwarts')
also_reload('.models/hogwart')

get '/hogwarts' do
  @students = Student.view_all()
  erb(:index)
end
