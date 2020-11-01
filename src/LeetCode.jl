module LeetCode

const LC = LeetCode
export LC

using Markdown

include("common.jl")
include("problems/problems.jl")

# export all
for n in names(@__MODULE__(); all=true)
    if Base.isidentifier(n) &&
       !startswith(String(n), "_") &&
       n ∉ (Symbol(@__MODULE__()), :eval, :include)
        @eval export $n
    end
end

end
