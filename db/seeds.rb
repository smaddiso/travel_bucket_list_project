require_relative("../models/country")
require_relative("../models/city")
require('pry-byebug')

# Country.delete_all()
# City.delete_all()

country1 = Country.new({"name" => "United Kingdom", "country_visited" => true})
country2 = Country.new({"name" => "The Netherlands", "country_visited" => true})
country3 = Country.new({"name" => "Germany", "country_visited" => false})
country4 = Country.new({"name" => "Australia", "country_visited" => false})
country5 = Country.new({"name" => "United States of America", "country_visited" => true})
country6 = Country.new({"name" => "Canada", "country_visited" => false})

country1.save()
country2.save()
country3.save()
country4.save()
country5.save()
country6.save()

city1 = City.new({"name" => "York", "city_visited" => true, "review" => "Very good", "rating" => "8", "country_id" => country1.id})
city2 = City.new({"name" => "Amsterdam", "city_visited" => true, "review" => "Tacky", "rating" => "3", "country_id" => country2.id})
city3 = City.new({"name" => "Berlin", "city_visited" => false, "review" => "", "rating" => "", "country_id" => country3.id})
city4 = City.new({"name" => "Sydney", "city_visited" => false, "review" => "", "rating" => "", "country_id" => country4.id})
city5 = City.new({"name" => "Boston", "city_visited" => true, "review" => "Excellent", "rating" => "10", "country_id" => country5.id})
city6 = City.new({"name" => "Toronto", "city_visited" => false, "review" => "", "rating" => "", "country_id" => country6.id})

city1.save()
city2.save()
city3.save()
city4.save()
city5.save()
city6.save()

binding.pry()
nil
