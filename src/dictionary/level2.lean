import basic_defs_world.jection --hide


/-
# Level 2 : Bijektivität und Surjektivität.
-/


/-
Nun möchten wir analog Beweisen, dass eine Funktion surjektiv ist, falls sie bijektiv ist.
-/

namespace jection -- hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Zum Beweisen müssen wir uns einfach die Definition von Bijektivität anschauen und die Elimierungseigenschaft der Und-Klausel beachten.
Dieses mal müssen wir die rechte Seite eliminieren.
-/

/- Lemma
Falls f bijective ist, dann ist f auch injective.
-/
lemma bij_surj {X Y : Type*} (f : X → Y) (f_bijective: is_bijective f) : is_surjective f :=
begin
  apply and.elim_right f_bijective,
end

end jection -- hide
