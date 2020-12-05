function min_operations(nums::Vector{Int}, x::Int)
    rnums = reverse(nums)
    if nums[1] > x && rnums[1] > x
        return -1
    end
    len = length(nums)
    rlm, llm, res = len, len, len
    for i in 1:(len - 1)
        if ((nums[i + 1] += nums[i]) > x)
            rlm = i
            break
        end
    end
    if rm == len
        if nums[end] < x
            return -1
        else
            return len
        end
    end
    for i in 1:(len - 1)
        if ((rnums[i + 1] += rnums[i]) > x)
            llm = i
            break
        end
    end
    i, j = 1, llm
    while i <= rlm && j > 0
        if nums[i] == x
            res = min(i, res)
            i += 1
        elseif rnums[j] == x
            res = min(j, res)
            j -= 1
        else
            sm = nums[i] + rnums[j]
            # println(i," ", j," ", sm)
            if sm == x
                res = min(i + j, res)
                i += 1
                j -= 1
            elseif sm > x
                j -= 1
            else
                i += 1
            end
        end
    end
    return res
end
