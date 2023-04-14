/-
# Level 2 : Bijektivität und Surjektivität
-/


/-
Nun möchten wir analog beweisen, dass eine Funktion surjektiv ist, falls sie bijektiv ist.
-/

namespace jection -- hide
-- begin hide
def is_injective {X Y: Type*} (f : X → Y) 
:= ∀ x : X, ∀ x' : X,
f x = f x' → x = x'

def is_surjective {X Y: Type*} (f : X → Y)
:= ∀ y : Y, ∃ x : X,
f x = y

def is_bijective {X Y: Type*} (f : X → Y)
:= is_injective f ∧ is_surjective f
-- end hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Zum Beweisen müssen wir uns einfach die Definition von Bijektivität anschauen und die Elimierungseigenschaft der Und-Klausel beachten.
Dieses Mal müssen wir die rechte Seite eliminieren.
-/

/- Lemma
Falls f bijektiv ist, dann ist f auch injektiv.
-/
lemma bij_surj {X Y : Type*} (f : X → Y) (f_bijective: is_bijective f) : is_surjective f :=
begin
  apply and.elim_right f_bijective,
end

end jection -- hide