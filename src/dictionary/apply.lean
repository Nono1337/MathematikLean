/- Tactic : apply
## Summary
tries to match the conclusion of the argument to the
current goal; might create new goals
-/


/-
# Simp

	apply expr

	The apply tactic tries to match the current goal against the conclusion of the type of term.
	The argument term should be a term well-formed in the local context of the main goal.
	If it succeeds, then the tactic returns as many subgoals as the number of premises that have
	not been fixed by type inference or type class resolution. Non-dependent premises are added
	before dependent ones.

	The apply tactic uses higher-order pattern matching, type class resolution, and first-order
	unification with dependent types.
	
-/


