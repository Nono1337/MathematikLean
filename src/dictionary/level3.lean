/-
# Level 3 : Injektivät und Surjektivität
-/


/-
Zum Abschluss zeigen wir nochmal, dass eine Funktion bijektiv ist, falls sie surjektiv und injektiv ist, indem wir die Und-Formel wieder richtig zusammengesetzen. 
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
Zum Beweisen müssen wir uns einfach die Definition von Bijektivität anschauen und die Und-Klausel beachten.
(and.intro)
-/

/- Lemma
Falls f surjektiv und injektiv ist, dann ist f auch bijektiv.
-/
lemma surj_inj_bij {X Y : Type*} (f : X → Y) (f_surjective: is_surjective f) (f_injective: is_injective f) : is_bijective f :=
begin
  apply and.intro f_injective f_surjective,
end

end jection
 -- hide