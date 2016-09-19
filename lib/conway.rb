#cool
# Dan's matrix extravaganza!!!
# matrix library for Ruby
# http://ruby-doc.org/stdlib-2.0.0/libdoc/matrix/rdoc/Matrix.html#method-c-build

require 'matrix'

class World
  attr_reader :cells
  def initialize(length)
    @cells = Matrix.build(length,length) { |row, column| Cell.new }
  end

  # test code for neighborhood
  def find_neighbors(x, y)
    cells.[](x,y)
  end
end

class Cell
  attr_accessor :state

	def initialize
    @state
  	@row
    @column
  end

  # returns if cell is alive
  def alive?
    state == 'live'
  end

  # count live neighbors (assume access to a neighbors array)
  def count_live_neighbors
    neighbors.filter(alive?).reduce(:+)
  end

  def find_neighbors
    # world is a matrix
    # world.[](x, y) will give you an individual cell with coordinates x and y
    # world.index(cell) will return coordinates of that cell in the form [x, y]
    # does "find_neighbors" require a definition of neighbors to be iterated upon? (pete sez yes)


  end

  def to_die?
    if count_live_neighbors > 3 || count_live_neighbors < 2
      state = 'die'
    end
  end

  def to_be_born?
    if count_live_neighbors == 3
      state = 'live'
    end
end
