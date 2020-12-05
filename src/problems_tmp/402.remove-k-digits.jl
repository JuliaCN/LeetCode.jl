function remove_kdigits(num::String, k::Int)::String
    num_code = codeunits(num)
    stk = UInt8[]
    for ch in num_code
        if k == 0 || isempty(stk)
            push!(stk, ch)
        else
            while !isempty(stk) && stk[end] > ch && k > 0
                pop!(stk)
                k -= 1
            end
            push!(stk, ch)
        end
    end
    idx = findfirst(x -> x != UInt8('0'), stk)
    if idx === nothing
        return "0"
    end
    return String(@view stk[idx:(end - k)])
end
