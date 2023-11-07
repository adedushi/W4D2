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
       raise "Error no" if @rows[start_pos] == nil 
       if end_pos.all?{|cord| cord >= 0 && cord < 8}
            piece = @rows[start_pos] 
            @rows[end_pos] = piece 
            @rows[start_pos] = nil
        end 
    end
end

# test = Board.new
# p test
# # pos = [0,1]
# # p test[pos] = "A"
# # p test