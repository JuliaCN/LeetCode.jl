function max_profit(prices::Vector{Int})::Int
    res = 0
    for i in 2:length(prices)
        res += (prices[i] > prices[i - 1]) ? (prices[i] - prices[i - 1]) : 0
    end
    return res
end
