import Common.test_clone


function run_test_clone()
    test_clone(Molecule([Atom(index=5)]), Dict(:atoms => [Atom(index=6)]), Molecule(atoms=[Atom(index=6)]), "Molecule test_clone 1")
end
