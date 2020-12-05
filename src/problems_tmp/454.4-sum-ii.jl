function four_sum_count(A::Vector{Int}, B::Vector{Int}, C::Vector{Int}, D::Vector{Int})::Int
    dic = counter([a + b for a in A for b in B])
    return sum(get(dic, -c - d, 0) for c in C for d in D)
end
