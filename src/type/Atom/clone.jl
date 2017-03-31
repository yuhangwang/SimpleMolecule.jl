using SimpleMolecule.Types.Atom

function clone(x::Atom, new_props::Dict=Dict())
    return Atom(merge(features(x), new_props)...)
end
