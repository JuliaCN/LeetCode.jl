@testset "132.palindrome-partitioning-ii.jl" begin
    @test partition_ps132("aab") == 1
    @test partition_ps132("a") == 0
    @test partition_ps132("ab") == 1
    @test partition_ps132(
        "iquvgtinxldylufwujdosgtqogqdibxeygwnbqbcuyxydkytolhvowhishkvukqoybxmdjajqtdvttmicmlmwerqhpheeckxckzuixsmoniyasaqxdwirntgebirlvzttabegwdseluyiktjglbsxivwkqowwtqbrciowkmdvhfsoslcspnukxxnsgbvpxddqqjkdzki",
    ) == 178
end
