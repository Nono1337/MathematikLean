import tactic -- hide

/-
# Level 5 : Surjektive Komposition
-/


/-
Wir betrachten nun erneut die Komposition von zwei Abbildungen/Funktionen f und g
Wir haben 3 Mengen X, Y und Z mit x ε X, y ε Y und z ε Z
$\operatorname{f}(x)=y$ und $\operatorname{g}(y)=z$

Wir können die Verkettung der Funktionen erneut also als $\operatorname{g}($\operatorname{f}(x))=z$ oder als g ∘ f schreiben (*function.comp*)

Wir möchten nun beweisen, dass sofern die Komposition g ∘ f surjektiv ist, dann ist g auch alleine surjektiv.
Entsprechend sollten wir uns dieses mal die Definition der Surjektivität nochmals genauer anschauen. Wir versuchen anschließend die ∀ Behauptungen zu beweisen, indem wir annehmen (assume), dass für jedes Element aus der Zielmenge, z ε Z, gilt, dass es ein Element aus der Startmenge gibt, sodass gilt: $\operatorname{g}($\operatorname{f}(x)) = z

Diesesmal wird sogar der Anfang vorgegeben, da die Verwendung der ***rcases*** Taktik ein tieferes Verständnis von Lean erfordert.
Als Gegenleistung sollten Sie zuerst versuchen die vorgegebenen Schritte, durch Klicken auf die einzelnen Zeilen und anschließendem analysieren, wie sich jeweils das Ziel des Beweises ändert, zu verstehen und anschließend dürfen Sie selbständig den Beweis vervollständigen.
-/

open classical


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
Nach unseren Annahmen ist zu beweisen, dass es ein Element aus der Menge y gibt, das durch die Funktion g auf unser z abbildet.
Wir können beweisen, dass es ein Element aus X gibt, welches über die Komposition auf z abbildet.
***rcases*** wird verwendet, um ***ex_x*** destrukturieren.
Wir können nun $\operatorname{f}(x)=y$ verwenden, um den Beweis zu vollenden.
```
let y : Y := f x,
use y,

show g y = z, from
```
-/

/- Lemma
Falls die Komposition g ∘ f surjektiv ist, dann ist g auch alleine surjektiv.
-/
lemma surj_comp_surjsecond {X Y Z : Type*} (f : X → Y) (g : Y → Z) (gf_surjective : is_surjective (g ∘ f)) : is_surjective g :=
begin
  /- hint
  assume z : Z,
  have ex_x : ∃ x : X, (g ∘ f) x = z := gf_surjective z,
  rcases ex_x with ⟨ x : X, gf_x_z⟩,
  -/
  let y : Y := f x,
  use y,

  show g y = z, from
  calc g y = g (f x) : by simp
  ... = (g ∘ f) x : by rw function.comp_app
  ... = z : by rw gf_x_z,
end
    
end jection -- hide