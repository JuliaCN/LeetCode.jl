@testset "1163.last-substring-in-lexicographical-order.jl" begin
    @test last_substring(
        "arpzrkqizlvqouudiggnezejhhuaanmaickndesynbkscubboihueuatpbhclzifkrcjhncllfdyqeawmdcefyhcnzciypnrezcu",
    ) ==
          "zrkqizlvqouudiggnezejhhuaanmaickndesynbkscubboihueuatpbhclzifkrcjhncllfdyqeawmdcefyhcnzciypnrezcu"
    @test last_substring("abab") == "bab"
    @test last_substring("leetcode") == "tcode"
    @test last_substring("cccc") == "cccc"
    @test last_substring("ccacccacccc") == "cccc"
end
