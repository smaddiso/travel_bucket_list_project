require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("../models/city")
require_relative("../models/country")
also_reload("../models/*")

#CRUD - READ / index / GET
get '/countries' do

end

#CRUD - CREATE  / new / GET
get '/countries/new' do

end

#CRUD - READ / show / GET
get '/countries/:id' do

end

#CRUD - CREATE/ create / POST
post '/countries' do

end

#CRUD - UPDATE / edit / GET
get '/countries/:id/edit' do

end

#CRUD - UPDATE / update / POST
post '/countries/:id' do

end

#CRUD - DELETE / delete / POST
post '/countries/:id/delete' do

end
