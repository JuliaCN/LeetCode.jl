function num_rook_captures(board::Matrix{Char})::Int
    res = 0
    i, j = findfirst(==('R'), board).I

    for v in (
        @view(board[i, (j + 1):end]),  # right
        @view(board[i, (j - 1):-1:1]),    # left
        @view(board[(i - 1):-1:1, j]),    # up
        @view(board[(i + 1):end, j]),  # down
    )
        x_ind = findfirst(!=('.'), v)
        if !isnothing(x_ind) && v[x_ind] == 'p'
            res += 1
        end
    end
    return res
end
