require_relative("../db/sql_runner")

class Country

  attr_reader :id, :name, :country_visited

  def initialize(options)
    @id = options["id"].to_i()
    @name = options["name"]
    @country_visited = options["country_visited"]
  end

  def save()
    sql = "INSERT INTO countries (name, country_visited) VALUES ($1, $2) RETURNING *"
    values = [@name, @country_visited]
    country_data = SqlRunner.run(sql, values)
    @id = country_data.first()["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM countries"
    country_data = SqlRunner.run(sql)
    result = country_data.map{|country| Country.new(country)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM countries WHERE id = $1"
    values = [id]
    country_data = SqlRunner.run(sql, values)
    result = Country.new(country_data.first)
    return result
  end

  def update()
    sql = "UPDATE countries SET (name, country_visited) = ($1, $2) WHERE id = $3"
    values = [@name, @country_visited, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM countries WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM countries"
    SqlRunner.run(sql)
  end

end
