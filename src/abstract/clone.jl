function clone{T<:AbstractMolecularContainer}(x::T, new_props::Dict=Dict())
    return T(;merge(features(x), new_props)...)
end
