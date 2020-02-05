function clean(phone_number)
    new_phone_number = replace(phone_number, r"[^[:digit:]]" => "")
    if startswith(new_phone_number, "1")
        new_phone_number = new_phone_number[2:end]
    end
    valid_length = length(new_phone_number) == 10
    valid_start = startswith(new_phone_number, r"[2-9]")
    valid_exchange_code = occursin(r"[2-9]", new_phone_number[4:4])
    valid_phone_number = valid_length & valid_start & valid_exchange_code
    if valid_phone_number
        return new_phone_number
    else
        return nothing
    end
end
