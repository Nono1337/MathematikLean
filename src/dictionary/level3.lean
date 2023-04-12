import dictionary.jection

/-
# Level 3 : Injektivät und Surjektivität.
-/


/-
Zum Abschluss zeigen wir nochmal das eine Funktion bijektiv ist falls sie surjektiv und injektiv ist, indem wir die Und-Formel wieder richtig zusammengesetzen. 
-/

namespace jection -- hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Zum Beweisen müssen wir uns einfach die Definition von Bijectivität anschauen und die Und-Klausel beachten.
(and.intro)
-/

/- Lemma
Falls f injective und surjective ist, dann ist f auch bijective.
-/
lemma surj_inj_bij {X Y : Type*} (f : X → Y) (f_surjective: is_surjective f) (f_injective: is_injective f) : is_bijective f :=
begin
  apply and.intro f_injective f_surjective,
end

end jection
 -- hide