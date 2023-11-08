
require "byebug"
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
            print coords
            unblocked = grow_unblocked_moves_in_dir(coords[0],coords[1])
            move += unblocked
        end
        return move
    end


    private
    def grow_unblocked_moves_in_dir(dx,dy)

        x, y = self.pos
        x += dx
        y += dy
        array = []
       
        if valid_moves(x,y)
            array << [x, y]
            puts array
        # elsif !empty?([x,y]) && self.color != self.board[[x,y]].color
        #     array << [x, y]    
        #     return array          
        end

        while self.valid_moves(array[-1])
            x += dx
            y += dy
            if empty?([x,y])
                array << [x, y] 
            elsif !empty?([x,y]) && self.color != self.board[[x,y]].color
                array << [x, y]
                break
            end
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

    def move_dirs
        raise NotImplementedError
    end

end