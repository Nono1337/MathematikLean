/- Tactic : assume
## Summary
introduces an identifer, as preparation for a proof of
an all-statement or an implication
-/


/-
# Simp

	assume (: expr | <binders>)

	Assuming the target of the goal is a Pi or a let, assume h : t unifies the type of the binder
	with t and introduces it with name h, just like intro h. If h is absent, the tactic uses the
	name this. If T is omitted, it will be inferred.

	assume (h₁ : t₁) ... (h`n` : t`n`) introduces multiple hypotheses. 
	Any of the types may be omitted, but the names must be present.
	
-/


