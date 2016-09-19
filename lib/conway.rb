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
  # edge cases : [0, 0] to [0, length], [0, 0] to [length, 0], [length, 0] to [length, length], [0, length] to [length, length]
  # unless (0 - 1 < 0
  def find_neighbors(x, y)
    neighbors.push(cells.[](x-1,y-1)
  end
end

class Cell
  attr_accessor :state

	def initialize
    @state = 'dead'
  end

  # returns if cell is alive
  def alive?
    state == 'live'
  end

  # count live neighbors (assume access to a neighbors array)
  def count_live_neighbors
    neighbors.filter(&:alive?).reduce(:+)
  end

  def find_neighbors
    # world is a matrix
    # world.[](x, y) will give you an individual cell with coordinates x and y
    # world.index(cell) will return coordinates of that cell in the form [x, y]
    # does "find_neighbors" require a definition of neighbors to be iterated upon? (pete sez yes)


  end

  # if live neighbors are greater than 3 or less than 2, cell state is set to dead. Current state does not matter
  def to_die?
    if count_live_neighbors > 3 || count_live_neighbors < 2
      state = 'dead'
    end
  end
  # if live neighbors are equal to 3, cell state is set to live. Current state does not matter
  def to_be_born?
    if count_live_neighbors == 3
      state = 'live'
    end
end
