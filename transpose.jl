function transpose_strings(input::AbstractArray)

    dims = size(input)
    if dims[1] > 0
        maxlen = sort(length.(input), rev = true)[1]
        modin = rpad.(input, maxlen)
        out = Vector(undef, maxlen)

        for i in 1:maxlen
            temp = ""
            for mot in modin
                temp = string(temp, string(mot[i]))
            end
            out[i] = temp
        end
        return out
    else
        return input
    end
end
