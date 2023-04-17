/- Tactic : rewrite (rw)
## Summary
applies the argument as a rewrite rule to the current
goal
-/

/-
# Rewrite

	Rewrite(rw) is a tactic to substitute a variable. For example we want to prove that:
	2x = 2* (y + 3). We know, that  x = y + 3. So we use rewrite to substitute the x with
	y + 3. In the next Step we use refl and solve the equation.
	
-/


/- Lemma
Prove that the empty set is open.
-/
lemma example1 (x y : mynat) (h : y = x + 3) : 2 * y = 2 * (x + 3) :=
begin
  rw h,
  refl,

end