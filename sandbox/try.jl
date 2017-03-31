module A

using Typeclass

@class Copyable T begin
    clone(::T)::T
end

type Me
    self::Int
end

@instance Copyable Me begin
    clone(x::Me) = Me(x.self + 1)
end

export Me, clone, Copyable
end

using A
import A.clone
using Typeclass

x = Me(1)
println(clone(x))

type Me2
    self::Int
end
@instance Copyable Me2 begin
    clone(x::Me2) = Me(x.self + 100)
end

x2 = Me2(1)
println(clone(x2))

println(typeof(Copyable))