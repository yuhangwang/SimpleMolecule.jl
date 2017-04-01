using Typeclass
import ..Types.Atom
import ..Abstract

@instance MolecularContainer Atom begin
    clone(x::Atom, new_props::Dict=Dict()) = Abstract.clone(x, new_props)
    obtain(x::Atom, k::Symbol) = Abstract.obtain(x, k)
    features(x::Atom) = Abstract.features(x)
    ==(x::Atom, y::Atom) = Abstract.==(x, y)
end
