function find_paths(m, n, N, i, j)
    dp = zeros(Int, m, n)

    for _ in 1:N
        t = copy(dp)
        inds = CartesianIndices(t)
        for x in inds
            v = 0
            for dir in ((0, -1), (0, 1), (1, 0), (-1, 0))
                p = x + CartesianIndex(dir)
                v += p ∈ inds ? t[p] : 1
            end
            dp[x] = v
        end
    end
    return dp[i, j] % (10^9 + 7)
end
