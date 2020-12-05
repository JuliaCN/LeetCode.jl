function reverse_integer(x::Int32)::Int
    s = sign(x)
    r = parse(Int, reverse(string(s * x)))
    return r <= typemax(Int32) ? s * r : 0
end
