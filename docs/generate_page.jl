using DemoCards: democard
using JSON
using ProgressMeter

# we assume that files are all named in "<id>.<title>" format
get_id(filename::String) = parse(Int, split(filename, ".")[1])

function generate_page(repo_root;
        problems = joinpath("docs", "problems_raw"),
        solutions = joinpath("src", "problems"),
        tests = joinpath("test", "problems")
)
    # these are tracked by git
    raw_problem_dir = joinpath(repo_root, problems)
    raw_solution_dir = joinpath(repo_root, solutions)
    raw_tests_dir = joinpath(repo_root, tests)

    # where the problem and solution files are generated -- this won't be tracked by git
    page_root = abspath(repo_root, "docs", "problems")
    page_problem = abspath(page_root, "problem")
    page_solution = abspath(page_root, "solution")

    if isdir(page_root)
        rm(page_root; force=true, recursive=true)
    end
    mkpath(page_solution)
    mkpath(page_problem)

    # 1. copy the whole solutions dir
    cp(raw_solution_dir, page_solution; force=true)
    rm(joinpath(page_solution, "problems.jl")) # no need to render this

    # 2. modify solution file and generate problem file
    raw_problem_filenames = filter(x->endswith(x, ".md"), readdir(raw_problem_dir))
    raw_test_filenames = filter(x->endswith(x, ".jl"), readdir(raw_tests_dir))

    @showprogress 1 "Combining problems, solutions and tests" for filename in readdir(page_solution)
        @info "generate page" filename
        if endswith(filename, ".jl")
            id = get_id(filename)
    
            # 2.1. attract meta info from the md file
            pid = findfirst(x->get_id(x)==id, raw_problem_filenames)
            if isnothing(pid)
                mdfile = joinpath(raw_problem_dir, splitext(filename)[1] * ".md")
                @warn "$mdfile does not exist"
                continue
            end
            raw_problem_file = joinpath(raw_problem_dir, raw_problem_filenames[pid])
            card = democard(raw_problem_file)
            title = card.title
            author = card.author
            date = card.date
    
            # 2.2 extract test codes; we assume everything in the testfile is needed
            tid = findfirst(x->get_id(x)==id, raw_test_filenames)
            raw_test_file = joinpath(raw_tests_dir, raw_test_filenames[tid])
            test = read(raw_test_file)

            # 2.2. dump the meta info and the test cases into jl file
            solution_file = joinpath(page_solution, filename)
            old = read(solution_file)
            open(solution_file, "w") do io
                println(io,
                    "# ---\n",
                    "# title: $title\n",
                    "# id: problem$id\n",
                    "# author: $author\n",
                    "# date: $date\n",
                    "# hidden: true\n",
                    "# ---\n",
                    "\n",
                    "using LeetCode, Test\n",
                )
                write(io, old)
                println(io, "\n# ---\n")
                write(io, test)
            end
    
            # 2.3. add the url link to solution
            problem_file = joinpath(page_problem, basename(raw_problem_file))
            cp(raw_problem_file, problem_file)
            open(problem_file, "a") do io
                println(io, "[![Solution](https://img.shields.io/badge/Check-solution-blue)](@ref problem$id)")
            end
        end
    end

    # 3. tell
    open(joinpath(page_solution, "config.json"), "w") do io
        files = filter(x->x!="config.json", readdir(page_solution))
        sort!(files; by=get_id)
        JSON.print(io, Dict("title"=>"Solution", "order"=>files))
    end

    return page_root
end
