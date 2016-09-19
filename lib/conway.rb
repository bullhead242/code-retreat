#cool
# Dan's matrix extravaganza!!!
# matrix library for Ruby
# http://ruby-doc.org/stdlib-2.0.0/libdoc/matrix/rdoc/Matrix.html#method-c-build

require 'matrix'

class World
  def initialize(length)
    @cells = Matrix.build(length,length) { |row, column| Cell.new }
  end

  # test code for neighborhood
  def find_neighbors

  end
end

class Cell
	def initialize
    @state
  	@row
    @column
  end

  def find_neighbors
    # world is a matrix
    # world.[](x, y) will give you an individual cell with coordinates x and y
    # world.index(cell) will return coordinates of that cell in the form [x, y]
    
  end
end
