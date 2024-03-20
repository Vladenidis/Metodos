function absolute_error(value::Float64, approximated_value::Float64)::Float64
    # Implement the absolute error function. Hint: use abs funciton
    return abs(value - approximated_value)
end

function relative_error(value::Float64, approximated_value::Float64)::Float64
     # Implement the relative error function.
    @assert ~isapprox(value, 0, atol = 1e-8) "Value must be non-zero"
     return abs((value - approximated_value)/value)
end

function approximated_value_interval_given_relative_error(
    value::Float64,
    relative_error::Float64,
)::Tuple{Float64,Float64}

    if isapprox(value, 0, atol = 1e-8)
        error("Please, provide a non zero value")
    end

    min_value = value - relative_error * abs(value)
    max_value = value + relative_error * abs(value)

    return (min_value, max_value)
end