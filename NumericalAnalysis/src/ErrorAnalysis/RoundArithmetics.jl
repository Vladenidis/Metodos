function round_sum(x::Float64, y::Float64; digits::Int64)
    """
    Implement a function that round x and y, then sum both.
    After, round again.

    hint: use "round" function.
    """
    return round( 
        round(x, digits=digits) + round(y, digits=digits), digits=digits
        )
end

function round_mul(x::Float64, y::Float64; digits::Int64)
    """
    Implement a function that round x and y, then multiply both.
    After, round again.
    """
    return round( 
        round(x, digits=digits)*round(y, digits=digits), digits=digits
        )
end

function trunc_sum(x::Float64, y::Float64; digits::Int64)
    """
    Implement a function that trunc (chopp) x and y, then sum both.
    After, chopp again.

    hint: use "trunc" function.
    """
    return trunc(
        trunc(x, digits=digits) + trunc(y, digits=digits), digits=digits
    )
end

function trunc_mul(x::Float64, y::Float64; digits::Int64)
    """
    Implement a function that trunc (chopp) x and y, then multiply both.
    After, chopp again.

    hint: use "trunc" function.
    """
    return trunc(
        trunc(x, digits=digits)*trunc(y, digits=digits), digits=digits
    )
end
