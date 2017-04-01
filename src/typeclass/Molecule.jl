using Typeclass
import ..Types.Molecule
import ..Abstract

@instance MolecularContainer Molecule begin
    clone(x::Molecule, new_props::Dict=Dict()) = Abstract.clone(x, new_props)
    obtain(x::Molecule, k::Symbol) = Abstract.obtain(x, k)
    features(x::Molecule) = Abstract.features(x)
    ==(x::Molecule, y::Molecule) = Abstract.==(x, y)
end
