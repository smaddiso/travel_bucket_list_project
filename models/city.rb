require_relative("../db/sql_runner")

class City

  attr_reader :id, :name, :city_visited, :review, :rating, :country_id

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @city_visited = options["city_visited"]
    @review = options["review"]
    @rating = options["rating"]
    @country_id = options["country_id"].to_i()
  end

  def save()
    sql = "INSERT INTO cities (name, city_visited, review, rating, country_id) VALUES ($1, $2, $3, $4, $5) RETURNING *"
    values = [@name, @city_visited, @review, @rating, @country_id]
    city_data = SqlRunner.run(sql, values)
    @id = city_data.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM cities"
    city_data = SqlRunner.run(sql)
    result = city_data.map{|city| City.new(city)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM cities WHERE id = $1"
    values = [id]
    city_data = SqlRunner.run(sql, values)
    result = City.new(city_data.first)
    return result
  end

  def update()
    sql = "UPDATE cities SET (name, city_visited, review, rating, country_id) = ($1, $2, $3, $4, $5) WHERE id = $6"
    values = [@name, @city_visited, @review, @rating, @country_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM cities WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM cities"
    SqlRunner.run(sql)
  end

end
