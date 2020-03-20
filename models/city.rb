require_relative("../db/sql_runner")

class City

  attr_reader :id, :name, :city_visited, :country_id

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @city_visited = options["city_visited"]
    @country_id = options["country_id"].to_i()
  end

  def save()
    sql = "INSERT INTO cities (name, city_visited, country_id) VALUES ($1, $2, $3) RETURNING *"
    values = [@name, @city_visited, @country_id]
    city_data = SqlRunner.run(sql, values)
    @id = city_data.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM cities"
    city_data = SqlRunner.run(sql)
    result = city_data.map{|city| City.new(city)}
    return result
  end


end
