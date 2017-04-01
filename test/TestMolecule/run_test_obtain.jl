import ..Common.test_obtain

function run_test_obtain()
    test_obtain(Molecule([Atom(index=10)]), :atoms, [Atom(index=10)])
end