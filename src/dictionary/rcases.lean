/- Tactic : rcases
## Summary
recursive pattern matching;
extracts, e.g., a witness from an existential term
-/


/-
# Simp

	rcases is a tactic that will perform cases recursively, according to a pattern. 
	It is used to destructure hypotheses or expressions composed of inductive types like 
	`h1 : a ∧ b ∧ c ∨ d` or `h2 : ∃ x y, trans_rel R x y`. Usual usage might be
	`rcases h1 with 〈ha, hb, hc⟩ | hd` or 
	`rcases h2 with 〈x, y, _ | ⟨z, hxz, hzy⟩⟩` for these examples.

	Each element of an rcases pattern is matched against a particular local hypothesis 
	(most of which are generated during the execution of rcases and represent individual 
	elements destructured from the input expression). An rcases pattern has the following grammar:

	A name like x, which names the active hypothesis as x.
	A blank _, which does nothing (letting the automatic naming system used by cases name the hypothesis).
	A hyphen -, which clears the active hypothesis and any dependents.
	The keyword rfl, which expects the hypothesis to be h : a = b, and calls subst on the hypothesis 
	(which has the effect of replacing b with a everywhere or vice versa).
	A type ascription p : ty, which sets the type of the hypothesis to ty and then matches it against p. 
	(Of course, ty must unify with the actual type of h for this to work.)
	A tuple pattern 〈p1, p2, p3⟩, which matches a constructor with many arguments, or a series of nested 
	conjunctions or existentials. For example if the active hypothesis is a ∧ b ∧ c, then the conjunction 
	will be destructured, and p1 will be matched against a, p2 against b and so on.
	A @ before a tuple pattern as in @〈p1, p2, p3⟩ will bind all arguments in the constructor, while leaving 
	the @ off will only use the patterns on the explicit arguments.
	An alteration pattern p1 | p2 | p3, which matches an inductive type with multiple constructors, or a 
	nested disjunction like a ∨ b ∨ c.
	
-/


