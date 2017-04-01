using Typeclass
import ..Types
Atom = Types.Atom

@instance MolecularContainer Atom begin
    clone(x::Atom, new_props::Dict=Dict()) = Types.clone(x, new_props)
    obtain(x::Atom, k::Symbol) = Types.obtain(x, k)
    features(x::Atom) = Types.features(x)
    ==(x::Atom, y::Atom) = Types.==(x, y)
end
