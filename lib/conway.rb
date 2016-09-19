#pry

class World
  def initialize(length)
    @cells = Matrix.build(length,length) { |row, column| Cell.new }
  end
end

class Cell
  def initialize
  @state
  @row
  @column
  end
end
