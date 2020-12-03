using LeetCode
using Test

# Every problem is run in a sandbox environment, test requirements are put into "requirements.jl"
# and will be included for each single problem.

root = abspath(@__DIR__, "..")

@testset "LeetCode.jl" begin
    include("common.jl")
    include("problems/problems.jl")
end

# trigger an auto-format after test
LeetCode.format_diff_file(root, "HEAD~1")
