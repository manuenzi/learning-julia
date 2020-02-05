
function is_leap_year(year::Int)
    is_leap_year = (year % 400) == 0
    if is_leap_year
        return is_leap_year
    else
        return ((year % 100) != 0) & ((year % 4) == 0)
    end
end
