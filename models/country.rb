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

end
