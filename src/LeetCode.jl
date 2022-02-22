module LeetCode

const LC = LeetCode
export LC

using Markdown
using DataStructures
using OffsetArrays
include("common.jl")
include("problems/problems.jl")

# export all
for n in names(LC; all=true)
    if Base.isidentifier(n) &&
       !startswith(String(n), "_") &&
       n ∉ (Symbol(@__MODULE__()), :eval, :include)
        @eval export $n
    end
end

end
