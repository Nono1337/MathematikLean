import dictionary.jection --hide

/-
# Level 4 : Verkettungen/Komposition mit „Rewrite“.
-/


/-
In folgendem Betrachten wir die Komposition von zwei Abbildungen/Funktionen f und g
Wir haben 3 Mengen X, Y und Z mit x ε X, y ε Y und z ε Z
$\operatorname{f}(x)=y$ und $\operatorname{g}(y)=z$

Wir können die Verkettung der Funktionen also als  $\operatorname{g}($\operatorname{f}(x))=z$ oder als g ∘ f 

Diese zwei Schreibarten werden durch *function.comp* abgedeckt: (f ∘ g) x = f (g x)

Wir möchten nun beweisen, dass falls die Komposition g ∘ f injektiv ist, dann ist f auch alleine injektiv. 
Dies machen wir zunächst schrittweise durch umschreiben unter der annahme das es zwei Elemente x und x' aus der Menge X gibt für die gilt das $\operatorname{f}(x) = $\operatorname{f}(x') ist.

-/

namespace jection -- hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Wir müssen 2 mal rw verwenden
-/

/- Lemma
Falls f bijective ist, dann ist f auch injective.
-/
lemma inj_comp_injfirst_step {X Y Z : Type*} (f : X → Y) (g : Y → Z) (gf_injective : is_injective (g ∘ f)) {x x' : X} {f_xx' : f x = f x'} : (g ∘ f) x = (g ∘ f) x' :=
begin
  rw function.comp_app,
  rw f_xx',
  refl,
end
    
end jection -- hide