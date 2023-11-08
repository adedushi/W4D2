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
    
    array = []
    x, y = self.pos 

    moves.each do |move| 
        dx, dy = move
        new_move = [dx + x, dy + y]
        array << new_move if valid_moves.include?(new_move)
    end

    array
  end
end
