require_relative 'Piece'
class Board 
    attr_reader :rows
    attr_writer :rows
    def initialize
        @rows = Array.new(8) {Array.new(8)}
        populate
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        @rows[pos[0].to_i][pos[1].to_i] = val
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
    def populate
        @rows[0][0]= Rook.new(:black, self, [0,0])
        @rows[0][1]= Knight.new(:black, self, [0,1])
        @rows[0][2]= Bishop.new(:black, self, [0,2]) 
        @rows[0][3]= Queen.new(:black, self, [0,3]) 
        @rows[0][4]= King.new(:black, self, [0,4]) 
        @rows[0][5]= Bishop.new(:black, self, [0,5]) 
        @rows[0][6]= Knight.new(:black, self, [0,6]) 
        @rows[0][7]= Rook.new(:black, self, [0,7]) 


        @rows[7][0]= Rook.new(:white, self, [7,0])
        @rows[7][1]= Knight.new(:white, self, [7,1])
        @rows[7][2]= Bishop.new(:white, self, [7,2]) 
        @rows[7][3]= Queen.new(:white, self, [7,3]) 
        @rows[7][4]= King.new(:white, self, [7,4]) 
        @rows[7][5]= Bishop.new(:white, self, [7,5]) 
        @rows[7][6]= Knight.new(:white, self, [7,6]) 
        @rows[7][7]= Rook.new(:white, self, [7,7]) 
        # @rows[0][0].map!{|el| el = Rook.new(black, board, [0,0])}
        # @rows[0][1].map!{|el| el = Knight.new(black, board, [0,1])}
        # @rows[0][2].map!{|el| el = Bishop.new(black, board, [0,2])} 
        # @rows[0][3].map!{|el| el = Queen.new(black, board, [0,3])} 
        # @rows[0][4].map!{|el| el = King.new(black, board, [0,4])} 
        # @rows[0][5].map!{|el| el = Bishop.new(black, board, [0,5])} 
        # @rows[0][6].map!{|el| el = Knight.new(black, board, [0,6])} 
        # @rows[0][7].map!{|el| el = Rook.new(black, board, [0,7])} 


        # @rows[7][0].map!{|el| el = Rook.new(white, board, [7,0])}
        # @rows[7][1].map!{|el| el = Knight.new(white, board, [7,1])}
        # @rows[7][2].map!{|el| el = Bishop.new(white, board, [7,2])} 
        # @rows[7][3].map!{|el| el = Queen.new(white, board, [7,3])} 
        # @rows[7][4].map!{|el| el = King.new(white, board, [7,4])} 
        # @rows[7][5].map!{|el| el = Bishop.new(white, board, [7,5])} 
        # @rows[7][6].map!{|el| el = Knight.new(white, board, [7,6])} 
        # @rows[7][7].map!{|el| el = Rook.new(white, board, [7,7])} 

        # @rows[1].map!{|el| el = Piece.new}
        # @rows[6].map!{|el| el = Piece.new}

        #need to figure out what board is 
    end

end


