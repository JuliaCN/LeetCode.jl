using LibGit2
using LibGit2.Consts: DELTA_ADDED, DELTA_MODIFIED, DELTA_DELETED
using JuliaFormatter

const DEFAULT_DIFF_FILTER = Set((
    LibGit2.Consts.DELTA_ADDED,
    LibGit2.Consts.DELTA_MODIFIED,
    # LibGit2.Consts.DELTA_DELETED # only need to format existing files
))

# modified based on LibGit2.diff_files
function diff_files(repo, tree, pathspecs=""; filter=DEFAULT_DIFF_FILTER)
    tree = LibGit2.GitTree(repo, tree * "^{tree}")
    files = String[]
    try
        diff = LibGit2.diff_tree(repo, tree, pathspecs)
        for i in 1:LibGit2.count(diff)
            delta = diff[i]
            delta === nothing && break
            if LibGit2.Consts.DELTA_STATUS(delta.status) in filter
                push!(files, unsafe_string(delta.new_file.path))
            end
        end
        close(diff)
    catch
        close(tree)
    end
    return files
end

"""
    format_diff_file(root, pathspecs=""; filter)

Apply JuliaFormatter to git diff (.jl) files.

# Inputs

- `root::String`: the root path to the git repo
- `pathspecs::String=""`: same to `git diff -- <pathspecs>`
- `filter=identity`: a function that used to filter out files of interested.
"""
function format_diff_file(root::String, pathspecs::String=""; filter=identity)
    repo = LibGit2.GitRepo(root)

    jl_diff = Base.filter(
        x -> endswith(x, ".jl"), joinpath.(root, diff_files(repo, "HEAD", pathspecs))
    )
    for file in filter(jl_diff)
        format(file, BlueStyle(); verbose=true)
    end
end
