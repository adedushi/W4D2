require 'colorize'
require "byebug"
class Piece
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color.to_sym
        @board = board
        @pos = pos
    end

    def to_s
        color = @color.to_s 
        color 
    end

    def empty?(new_pos)
        @board[new_pos[0]][new_pos[1]] == nil
    end

    def valid_moves(new_pos)

       valid = []
<<<<<<< HEAD
         if self.pos.empty? && @pos.all?{|coord| coord < 8 && coord >= 0}
            return true  
    end
       false 
=======
       valid << new_pos if self.empty?(new_pos) && new_pos.all?{|coord| coord < 8 && coord >= 0}
       valid 
>>>>>>> feb4575db512459b285433109784ab4354e9c5ff
    end

    def pos=(val)
        @pos = val 
    end
end