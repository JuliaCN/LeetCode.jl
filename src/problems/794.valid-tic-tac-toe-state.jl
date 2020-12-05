function validTicTacToe(board::Array{Char})::Bool
    n_X, n_O = 0, 0

    for x in board
        if x == 'X'
            n_X += 1
        elseif x == 'O'
            n_O += 1
        end
    end

    if n_O > n_X || n_X >= n_O + 2
        false
    elseif n_X >= 3
        if n_X == n_O
            if is_win(board, 'X')
                false  # Impossible! n_X should == x_O + 1
            else
                true
            end
        else
            # @assert n_X == n_O + 1
            if is_win(board, 'O')
                false  # Impossible!
            else
                true
            end
        end
    else
        true
    end
end

function is_win(b, x)
    return b[1] == b[2] == b[3] == x ||
           b[4] == b[5] == b[6] == x ||
           b[7] == b[8] == b[9] == x ||
           b[1] == b[4] == b[7] == x ||
           b[2] == b[5] == b[8] == x ||
           b[3] == b[6] == b[9] == x ||
           b[1] == b[5] == b[9] == x ||
           b[3] == b[5] == b[7] == x
end
