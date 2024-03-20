@testset "Test Round Arithmetics" begin

    #Exercise 1
    atol = 1e-8

    value = (13/14 - 6/7) / (2*exp(1) - 5.4)

    trunc_operation = trunc(
        trunc_sum(13 / 14, -6 / 7, digits = 4) / trunc_sum(trunc_mul(2.0, exp(1), digits = 4), -5.4, digits = 4),
        digits = 4,
    )

    @test trunc_operation == 1.9615
    @test absolute_error(value, trunc_operation) ≈ 0.007959860713978362 atol = atol
    @test relative_error(value, trunc_operation) ≈ 0.0040745826276636045 atol = atol
    

    round_operation = round(
        round_sum(13 / 14, -6 / 7, digits = 4) / round_sum(round_mul(2.0, exp(1), digits = 4), -5.4, digits = 4),
        digits = 4,
    )

    @test round_operation == 1.9536
    @test absolute_error(value, round_operation) ≈ 5.986071397834358e-5 atol = atol
    @test relative_error(value, round_operation) ≈ 3.0642172522864785e-5 atol = atol
end
