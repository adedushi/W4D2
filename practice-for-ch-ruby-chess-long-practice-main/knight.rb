require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def symbol
    '♞'.colorize(color)
  end

  protected

  def move_diffs
    moves = [[1, 2], 
    [2, 1],
    [2, -1],
    [1, -2],
    [-1, 2],
    [-2, 1],
    [-1, -2], 
    [-2, -1]]
    return moves
  end
end
