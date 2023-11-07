require_relative 'Piece'
class Board 
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        @rows[0].map!{|el| el = Piece.new}
        @rows[1].map!{|el| el = Piece.new}
        @rows[6].map!{|el| el = Piece.new}
        @rows[7].map!{|el| el = Piece.new}   
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        @rows[pos[0]][pos[1]] = val
    end

    def move_piece(start_pos, end_pos)
       raise "Error" if self[start_pos] == nil 
       if end_pos.all?{|coord| coord >= 0 && coord < 8} && self[end_pos] == nil
            piece = self[start_pos] 
            self[end_pos] = piece
            self[start_pos] = nil
        else
            raise "Error"
        end 
        return self
    end
end

