/- Tactic : refl
## Summary
tries to resolve the goal through definitional equality
-/

/-
# Refl

	Refl stands for reflexivity. This Tactic whil prove any goal in the Form X = X.
	But this tactic only proves the equation, if the statements are exactly the same.
-/


/- Lemma
Prove that the empty set is open.
-/
lemma example (x y z : mynat) : x * y + z = x * y + z :=
begin
  refl,

end