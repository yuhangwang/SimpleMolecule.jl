module type
@class MolecularContainer T begin
    clone(::T; new_props::Dict)::T
    obtain(::T)
    ==(::T, ::T)::Bool
end
