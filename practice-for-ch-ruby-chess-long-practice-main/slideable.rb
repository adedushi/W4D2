module Slideable 

    def diagonal_dirs(pos)
        DIAGNOL_DIRS.each do |ele| 
            x, y = pos
            dx, dy = ele
            new_move = []
            new_move << [dx + x, dy + y]
        end

        new_move.select!{ |ele| ele.all?{ |coord| coord < 8 && coord >= 0 }}
    end

    def horizonal_dirs(pos)
    end

    def moves
    end


    private
    HORIZONTAL_DIRS =
    [[1,0],
    [-1,0],
    [0,1],
    [0,-1]]

    DIAGNOL_DIRS =
    [[1,1],
    [-1,-1],
    [1,-1],
    [-1,1]]

end