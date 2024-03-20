@testset "Test absolute_error" begin

    atol = 1e-16

    #Exercise 1.
    value = Float64(π)
    approximated_value = 22 / 7

    @test absolute_error(value, approximated_value) ≈ 0.0012644892673496777 atol = atol

    #Exercise 2.
    value = Float64(π)
    approximated_value = 3.1416

    @test absolute_error(value, approximated_value) ≈ 7.346410206832132e-6 atol = atol
end

@testset "Test relative_error" begin

    atol = 1e-16

    function stirling_approximation(n::Int64)::Float64
        sqrt(2 * pi * n) * (n / exp(1))^n
    end

    #Exercise 1. 
    value = factorial(7) |> Float64
    approximated_value = stirling_approximation(7)

    @test relative_error(value, approximated_value) ≈ 0.011826223886416323 atol = atol

    #Exercise 2. 
    value = factorial(20) |> Float64
    approximated_value = stirling_approximation(20)

    @test relative_error(value, approximated_value) ≈ 0.00415765262287991 atol = atol
end

@testset "Test approximated_value_interval_given_relative_error" begin

    atol = 1e-8

    println("************************************************")
    println("Remark: next test performs 2 tests per exercise!")
    println("************************************************")

    #Exercise 1. 
    min_approx, max_approx = approximated_value_interval_given_relative_error(10.0, 1e-3)

    @test min_approx ≈ 9.99 atol = atol
    @test max_approx ≈ 10.01 atol = atol

    #Exercise 2. 
    min_approx, max_approx = approximated_value_interval_given_relative_error(100.0, 1e-3)

    @test min_approx ≈ 99.9 atol = atol
    @test max_approx ≈ 100.1 atol = atol

    #Exercise 3. 
    min_approx, max_approx = approximated_value_interval_given_relative_error(-50.0, 1e-3)

    @test min_approx ≈ -50.05 atol = atol
    @test max_approx ≈ -49.95 atol = atol

    #Exercise 4.
    min_approx, max_approx = approximated_value_interval_given_relative_error(10.0, 1e-4)

    @test min_approx ≈ 9.999 atol = atol
    @test max_approx ≈ 10.001 atol = atol

    #Exercise 5. 
    min_approx, max_approx = approximated_value_interval_given_relative_error(100.0, 1e-4)

    @test min_approx ≈ 99.99 atol = atol
    @test max_approx ≈ 100.01 atol = atol

    #Exercise 6. 
    min_approx, max_approx = approximated_value_interval_given_relative_error(-50.0, 1e-4)

    @test min_approx ≈ -50.005 atol = atol
    @test max_approx ≈ -49.995 atol = atol
end
