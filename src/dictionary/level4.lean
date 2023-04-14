/-
# Level 4 : Injektive Komposition
-/


/-
In folgendem betrachten wir die Komposition von zwei Abbildungen/Funktionen f und g
Wir haben 3 Mengen X, Y und Z mit x ε X, y ε Y und z ε Z
$\operatorname{f}(x)=y$ und $\operatorname{g}(y)=z$

Wir können die Verkettung der Funktionen also als $\operatorname{g}($\operatorname{f}(x))=z$ oder als g ∘ f schreiben

In Lean werden diese zwei Schreibarten durch *function.comp* abgedeckt: (f ∘ g) x = f (g x)

Wir möchten nun beweisen, dass sofern die Komposition g ∘ f injektiv ist, dann ist f auch alleine injektiv.
Hierfür sollten wir uns die Definition der Injektivität nochmals genauer anschauen. Wir versuchen anschließend die ∀ Behauptungen zu beweisen, indem wir annehmen (assume), dass es zwei Elemente x und x' aus der Menge X , für die gilt. dass $\operatorname{f}(x) = $\operatorname{f}(x') ist.

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
Nach unseren Annahmen sollte sich das Ziel des Beweises zu x = x' ändern. Diese Behauptung können wir beweisen, indem wir „gf_injective“ verwenden (apply) und dann schrittweise die Funktion umschreiben (rw).
```
  assume x : X,
  assume x' : X,
  assume f_xx' : f x = f x',

  apply gf_injective,

  show (g ∘ f) x = (g ∘ f) x', from
  calc (g ∘ f) x = g (f x) : 
```
-/

/- Lemma
Falls die Komposition g ∘ f injektiv ist, dann ist f auch alleine injektiv.
-/
lemma inj_comp_injfirst {X Y Z : Type*} (f : X → Y) (g : Y → Z) (gf_injective : is_injective (g ∘ f)) : is_injective f :=
begin
  assume x : X,
  assume x' : X,
  assume f_xx' : f x = f x',

  have gf_xx' : (g ∘ f) x = (g ∘ f) x', from
  calc (g ∘ f) x = g (f x) : by rw function.comp_app
  ... = g (f x') : by rw f_xx'
  ... = (g ∘ f) x' : by rw function.comp_app,
  
  apply gf_injective,
  rw gf_xx',
  --refl,
end
    
end jection -- hide