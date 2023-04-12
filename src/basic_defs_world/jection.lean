namespace jection

def is_injective {X Y: Type*} (f : X → Y)
:= ∀ x : X, ∀ x' : X,
f x = f x' → x = x'

def is_surjective {X Y: Type*} (f : X → Y)
:= ∀ y : Y, ∃ x : X,
f x = y

def is_bijective {X Y: Type*} (f : X → Y)
:= is_injective f ∧ is_surjective f

end jection