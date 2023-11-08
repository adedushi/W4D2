module Stepable 
    def moves
        array = []
            x, y = pos 
            self.move_diffs.each do |move| 
                dx, dy = move
                new_move = [dx + x, dy + y]
                if valid_moves(new_move) && empty?(new_move)
                    array << new_move 
                elsif !empty?(new_move)  && color != self.board(new_move).color
                    array<< new_move
                    break 
                end
            end
    
            array
        end
    end
    
    # MOVES = [[1, 2], 
    #         [2, 1],
    #         [2, -1],
    #         [1, -2],
    #         [-1, 2],
    #         [-2, 1],
    #         [-1, -2], 
    #         [-2, -1]]
    # Private 


    # def moves_diffs(pos)
    #     array = []
    #     x, y = pos 
    #     MOVES.each do |move| 
    #         dx, dy = move
    #         new_move = [dx + x, dy + y]
    #         array << new_move if new_move.all? { |coord| coord >= 0 && coord < 8}
    #     end

    #     array
    # end