function is_valid_triangle(sides)
    return all([2*sides[i] <= sum(sides) for i in 1:3]) & (all(sides .> 0))
end
function is_equilateral(sides)
    return (length(unique(sides)) == 1) & is_valid_triangle(sides)
end

function is_isosceles(sides)
    return (length(unique(sides)) <= 2) & is_valid_triangle(sides)
end

function is_scalene(sides)
    return (length(unique(sides)) == 3) & is_valid_triangle(sides)
end
