using Typeclass


@class MolecularContainer T begin
    clone(::T, new_props::Dict=Dict())::T
    obtain(::T, ::Symbol)
    features(::T)::Dict
    ==(::T, ::T)::Bool
end

