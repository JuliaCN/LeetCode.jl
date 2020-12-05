function range_bitwise_and(m::Int, n::Int)::Int
    i = 0
    while m != n
        m >>= 1
        n >>= 1
        i += 1
    end
    return n << i
end
