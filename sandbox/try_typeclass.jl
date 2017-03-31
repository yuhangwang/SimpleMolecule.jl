module A

using Typeclass

@class Copyable T Symbol begin
    clone(::T)::T
    obtain(::T, ::Symbol)
end

type Me
    self::Int
end

@instance Copyable Me begin
    clone(x::Me) = Me(x.self + 1)
    obtain(x::Me, s::Symbol) = s 
end

export Me, clone, obtain, Copyable
end

using A
import A: clone, obtain
using Typeclass

x = Me(1)
println(clone(x))

type Me2
    self::Int
end
@instance Copyable Me2 begin
    clone(x::Me2) = Me(x.self + 100)
    obtain(x::Me2, s::Symbol) = s
end

x2 = Me2(1)
println(clone(x2))

println(typeof(Copyable))
println(obtain(x, :prop))
println(obtain(x2, :prop2))