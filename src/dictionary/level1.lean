import basic_defs_world.definition -- hide



/- Axiom : Eine Funktion ist injektive, wenn es zu jedem Element y aus der Zielmenge Y HÖCHSTEN ein (oder gar kein) Element x der Ausgangsmenge X gibt.
is_injective: ∀ x : X, ∀ x' : X, f(x) = f(x') → x = x'
-/

/- Axiom : Eine Funktion ist surjektiv, wenn es zu jedem Element y aus der Zielmenge Y MINDESTENS ein Element x der Ausgangsmenge X gibt.
is_surjective: ∀ y : Y, ∃ x : X, f(x) = y
-/

/- Axiom : Eine Funktion ist bijektive, wenn sie sowohl injektiv als auch surjektiv ist. Für ALLE Elemente y aus der Zielmenge Y gibt es GENAU EIN Element x aus der Ausgangsmenge X
is_bijective: is_injective f ∧ is_surjective f
-/

/-
# Level 1 : Injektivität, Surjektivität und Bijektivität.
-/


/-
Wir möchten mit einer einfachen Übung beginnen um den Einstieg und die Handhabung mit Lean zu ermöglichen.
Anhand von den Eigenschaften injektiver, surjektiver und bijektivier Funktion möchten wir das Themengebiet genauer bleuchten und nebenbei grundlegende Beweistechniken in Lean genauer kennenlernen. 
Zusätzlich zu den Bereits kennengelernten Taktiken links sind nun auch Axiome zu finden. Diese Axiome erläutern die Definition der Eigenschaften.
Schauen Sie sich zunächst die jeweiligen Definitionen an.

Nachdem wir nun die Definitonen kennengelernt haben veranschaulichen wir uns mal die Eigenschaften anhand einiger Beispiele.
Wir bedrachten die Projektion:
```
X = {1; 2; 3}; Y = {1; 2; 3}
f : X → Y
1 → 1
2 → 1
3 → 2
```
Diese Abbildung ist nicht injektiv, f(1) = 1 = f(2) und nicht surjektiv (auf 3 wird nicht abgebildet).

Wir können unser neu gewonnenes Wissen nun anwenden um zu zeigen, dass eine Funktion injektiv ist, sollte sie bijektiv sein.
Der folgende Beweis benötigt nur eine Zeile Code.
**Das , am Zeilenende nicht vergessen**
-/

namespace jection -- hide

/- Hint : Falls Sie nicht weiterkommen, hier klicken für einen Hinweis.
Zum Beweisen müssen wir uns einfach die Definition von Bijektivität anschauen und die Elimierungseigenschaft der Und-Klausel anwenden.
-/

/- Lemma
Falls f bijektiv ist, dann ist f auch injektiv.
-/
lemma bij_inj {X Y : Type*} (f : X → Y) (f_bijective: is_bijective f) : is_injective f :=
begin
    apply and.elim_left f_bijective,
end
    
end jection -- hide
