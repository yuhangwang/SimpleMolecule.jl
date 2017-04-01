import ..Common.test_obtain

function run_test_obtain()
    test_obtain(Atom(atom_name=" A"), :atom_name, " A")
    test_obtain(Atom(alt_location='1'), :alt_location, '1')
    test_obtain(Atom(insertion='I'), :insertion, 'I')
    test_obtain(Atom(occupancy=0.99), :occupancy, 0.99)
    test_obtain(Atom(beta=0.99), :beta, 0.99)
    test_obtain(Atom(element="E"), :element, "E")
    test_obtain(Atom(charge=1), :charge, 1)
    test_obtain(Atom(index=99), :index, 99)
    test_obtain(Atom(residue_name="ALA"), :residue_name, "ALA")
    test_obtain(Atom(residue_id=11), :residue_id, 11)
    test_obtain(Atom(segment_name="SEG"), :segment_name, "SEG")
    test_obtain(Atom(chain_name="C"), :chain_name, "C")
    test_obtain(Atom(system_name="S"), :system_name, "S")
    test_obtain(Atom(coordinate=[1., 0., 0.]), :coordinate, [1., 0., 0.])
end