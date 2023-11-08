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
        if new_pos == nil
            temp = @pos
            @pos = new_pos
            temp = nil
            return true
        end
        false
    end

    def valid_moves
       valid = []
       valid << @pos if self.pos.empty? && @pos.all?{|coord| coord < 8 && coord >= 0}
       valid 
    end

    def pos=(val)
        @pos = val 
    end
end