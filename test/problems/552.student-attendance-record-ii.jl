@testset "552.student-attendance-record-ii.jl" begin
    for (i, j) in zip(
        [
            2
            10958
            17780
            66339
            85599
            82009
            69923
            35625
            77608
            4945
            74685
            62753
            75243
            74415
            42810
            53515
            8347
            28621
            69387
            92734
            38902
            34193
            94858
            70774
            27668
        ],
        [
            8
            649450795
            986891059
            561907615
            364265078
            483789422
            510526871
            108511862
            961167969
            146076425
            30706201
            644547908
            960151554
            675210797
            421499587
            656217676
            473875754
            621142329
            39572738
            618690594
            815584001
            411744682
            24911794
            99736734
            418675188
        ],
    )
        @test check_record(i) == j
    end
end
