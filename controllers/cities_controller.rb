require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("../models/city")
require_relative("../models/country")
also_reload("../models/*")

#CRUD - READ / index / GET
get '/cities' do
  @cities = City.all()
  erb(:"cities/index")
end

#CRUD - CREATE  / new / GET
get '/cities/new' do
  @countries = Country.all()
  erb(:"cities/new")
end

#CRUD - READ / show / GET
get '/cities/:id' do
  @city = City.find(params[:id].to_i())
  @countries = Country.all()
  erb (:"cities/show")
end

#CRUD - CREATE/ create / POST
post '/cities' do
  @city = City.new(params)
  @city.save
  erb (:"cities/create")
end

#CRUD - UPDATE / edit / GET
get '/cities/:id/edit' do
  @countries = Country.all()
  @city = City.find(params[:id].to_i())
  erb (:"cities/edit")
end

#CRUD - UPDATE / update / POST
post '/cities/:id' do
  City.new(params).update()
  redirect to '/cities'
end

#CRUD - DELETE / delete / POST
post '/cities/:id/delete' do
  City.find(params[:id].to_i()).delete()
  redirect to '/cities'
end
