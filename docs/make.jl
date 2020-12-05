using Documenter
using DemoCards

include("generate_page.jl")

page = generate_page(joinpath(@__DIR__, ".."); solutions="src/problems_tmp")

## build docs

# 1. generate demo files
demopage, postprocess_cb = makedemos(page) # the relative path to docs/

# 2. normal Documenter usage
format = Documenter.HTML(prettyurls=get(ENV, "CI", nothing) == "true")
makedocs(format = format,
         pages = [
            "Home" => "index.md",
            demopage,
         ],
         sitename = "LeetCode")

# 3. postprocess after makedocs
#postprocess_cb()

deploydocs(repo = "github.com/rfhklwt/LeetCode.jl.git")
