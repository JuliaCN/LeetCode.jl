function count_primes(n::Int)
    if n <= 1
        return 0
    end
    arr = fill(true, n - 1)
    for i in 2 : n - 1
        for j in i ^ 2 : i : (n - 1)
            arr[j] = false
        end
    end
    return sum(arr) - 1
end
