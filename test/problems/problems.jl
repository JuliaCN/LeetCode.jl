@testset "problems" begin
    is_ci = get(ENV, "CI", nothing) == "true"
    if is_ci
        test_files = filter(isfile, joinpath.(@__DIR__, readdir(@__DIR__)))
    else
        repo = LibGit2.GitRepo(root)
        problem_dir = relpath(@__DIR__, root) # "test/problems"

        test_files = filter(diff_files(repo, "HEAD~1", "")) do f
            startswith(f, problem_dir) && endswith(f, ".jl")
        end
    end
    # don't recursively include "problem.jl" itself
    test_files = filter(x -> x != "problems.jl", basename.(test_files))

    @info "testing $(length(test_files)) problems" CI = is_ci
    for f in test_files
        # run tests in a sandbox
        m = Module(gensym())
        # modules created with Module() does not have include defined
        Core.eval(m, :(include(x) = Base.include($m, x)))
        Core.eval(m, :(include("../requirements.jl")))
        Core.eval(m, :(include($f)))
    end
end
