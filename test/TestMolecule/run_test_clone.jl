import Common.test_clone


function run_test_clone()
    test_clone(Molecule([Atom(index=5)]), [Dict(:residue_id => 2)], Atom(index=1, residue_id=2), "Atom test_clone 1")
end
