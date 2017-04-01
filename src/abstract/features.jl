"""
Return a dictionary with the file names as keys and
field values as values.
"""
function features{T<:AbstractMolecularContainer}(x::T)
    Dict([(k, getfield(x, k)) for k in fieldnames(x)])
end
