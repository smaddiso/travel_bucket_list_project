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

end

#CRUD - READ / show / GET
get '/cities/:id' do
  @city = City.find(params[:id].to_i())
  erb (:"cities/show")
end

#CRUD - CREATE/ create / POST
post '/cities' do

end

#CRUD - UPDATE / edit / GET
get '/citiess/:id/edit' do

end

#CRUD - UPDATE / update / POST
post '/cities/:id' do

end

#CRUD - DELETE / delete / POST
post '/cities/:id/delete' do

end
