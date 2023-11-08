module Slideable 

    def diagonal_dirs
        DIAGNOL_DIRS
    end
    #     DIAGNOL_DIRS.each do |ele| 
    #         x, y = pos
    #         dx, dy = ele
    #         new_move = []
    #         new_move << [dx + x, dy + y]
    #     end

    #     new_move.select!{ |ele| ele.all?{ |coord| coord < 8 && coord >= 0 }}
    # end

    def horizonal_dirs
       HORIZONTAL_DIRS
    end

    def moves
        move = [] 
        self.move_dirs do |coords|
            grow_unblocked_moves_in_dir()
    end


    private
    def grow_unblocked_moves_in_dir(dx,dy)
        array=[] 
        x, y = self.pos
        while self.valid_moves.include?()
            x = x + dx 
            y = y + dy 
            array << [dx, dy]
        end
        array 
    end
    HORIZONTAL_DIRS =
    [[1,0],
    [-1,0],
    [0,1],
    [0,-1]].freeze

    DIAGNOL_DIRS =
    [[1,1],
    [-1,-1],
    [1,-1],
    [-1,1]].freeze

end