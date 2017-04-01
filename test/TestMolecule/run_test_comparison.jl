import ..Common.test_comparison


function run_test_comparison()
    test_comparison(Molecule([Atom(residue_id=1)]), Molecule([Atom(residue_id=1)]), true, "Molecule :atoms")
    test_comparison(Molecule([Atom(residue_id=1)]), Molecule([Atom(residue_id=2)]), false, "Molecule :atoms")
end
