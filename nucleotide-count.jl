function count_nucleotides(strand::AbstractString)

    nucleotide_count = Dict( 'A' => 0, 'C' => 0, 'T' => 0, 'G' => 0)
    if occursin(r"[^ACTG]", strand)
        throw(DomainError(strand, "Pattern is not DNA sequence!"))
    else
        for key in keys(nucleotide_count)
            nucleotide_count[key] = count(i -> (i == key), strand)
        end
    end
    return nucleotide_count
end
