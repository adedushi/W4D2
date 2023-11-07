class Board 
    attr_reader :rows
    def initialize
        @rows = Array.new(8) {Array.new(8)}
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        @rows[pos[0]][pos[1]] = val
    end

end

test = Board.new
pos = [0,1]
p test[pos] = "A"
p test