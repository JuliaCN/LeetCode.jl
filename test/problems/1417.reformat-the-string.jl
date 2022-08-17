@testset "1417.reformat-the-string.jl" begin
    function chk1417(f::Function, instr::AbstractString)
        st = f(instr)
        abs(length(instr) - 2 * count(isdigit, instr)) > 1 && return isempty(st)
        sort!(collect(st)) == sort!(collect(instr)) || return false
        flag = !isdigit(st[1])
        for c in isdigit.(collect(st))
            flag != c || return false
            flag = c
        end
        return true
    end
    tests = ["a0b1c2", "leetcode", "1229857369", "covid2019", "ab123", "2a34", "12", "ec"]
    for t in tests
        @test chk1417(reformatstr, t)
    end
end
