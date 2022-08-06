# @lc code=start
using LeetCode

function actual_email(email)
    name, domain = split(email, '@')
    name = first(split(replace(name, "." => ""), "+"))
    return name * "@" * domain
end

function num_unique_emails(emails::Vector{String})
    return length(unique(actual_email(email) for email in emails))
end
# @lc code=end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

