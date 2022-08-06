# @lc code=start
using LeetCode
function is_ipv4(text::String)
    data = split(text, '.')
    length(data) != 4 && return false
    any(length(x) > 1 && first(x) == '0' for x in data) && return false
    try
        all(0 <= parse(Int, x) <= 255 for x in data)
    catch
        return false
    end
end

function is_ipv6(text::String)
    data = split(text, ':')
    length(data) != 8 && return false
    any(length(x) > 4 for x in data) && return false
    return all(all.(isxdigit, data))
end

function valid_ip_address(query_ip::String)::String
    is_ipv4(query_ip) && return "IPv4"
    is_ipv6(query_ip) && return "IPv6"
    return "Neither"
end

# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

