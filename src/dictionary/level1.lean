import dictionary.jection --hide


/- Axiom : is_injective
∀ x : X, ∀ x' : X,
f(x) = f(x') → x = x'
-/

/- Axiom : is_surjective
∀ y : Y, ∃ x : X,
f(x) = y
-/

/- Axiom : is_bijective
is_injective f ∧ is_surjective f
-/

/-
# Level 1 : Bijective and Injective.
-/


/-
Wir möchten mit einer einfachen Übung beginnen um den Einstieg in die Handhabung mit Lean zu ermöglichen.
Der folgende Beweis benötigt nur eine Zeile Code
-/

namespace jection -- hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Zum Beweisen müssen wir uns einfach die Definition von Bijectivität anschauen und die Elimierungseigenschaft der Und-Klausel beachten.
-/

/- Lemma
Falls f bijective ist, dann ist f auch injective.
-/
lemma bij_inj { X Y : Type* } (f : X → Y) (f_bijective: is_bijective f) : is_injective f :=
    and.elim_left f_bijective
    
end jection -- hide