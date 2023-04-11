/- Tactic : assume
## Summary
introduces an identifer, as preparation for a proof of
an all-statement or an implication
-/

/- Tactic : unfold
## Summary
unfolds a definition
-/

/- Tactic : use
## Summary
prove an existential statement from an example
-/

/- Tactic : rcases
## Summary
recursive pattern matching;
extracts, e.g., a witness from an existential term
-/

/- Tactic : cases
## Summary
proof by case distinction
-/

/- Tactic : induction
## Summary
proof by induction (not only over natural numbers)
-/

/- Tactic : hint, suggest,
library_search
## Summary
tactics that search for ways to make progress in the
proof
-/

/- Tactic : sorry
## Summary
pretends to be a proof (useful for developing the overall
structure of a proof)
or a value of the given type (usually dangerous)
-/

/- Tactic : exact
## Summary
solves the current goal by giving an exact proof term
-/

/- Tactic : refine
## Summary
like exact, but can contain wildcards/holes _
that may lead to new goals
-/

/- Tactic : apply
## Summary
tries to match the conclusion of the argument to the
current goal; might create new goals
-/

/- Tactic : simp, dsimp
## Summary
tries to use lemmas and hypotheses to simplify the
current goal;
dsimp is like simp, using only definitional equalities
-/

/- Tactic : rw
## Summary
applies the argument as a rewrite rule to the current
goal
-/

/- Tactic : refl
## Summary
tries to resolve the goal through denitional equality
-/

/- Tactic : tauto, tauto!,
finish
## Summary
Finishing tactics, trying to solve the goal completely
using basic logic, definitional equalities, etc.
-/

/- Tactic : arith, linarith,
omega, ring
## Summary
tactics that handle arithmetic equalities and inequalities
of various types; particularly convenient in combination
with calc
-/

/- Tactic : norm_num,
norm_cast
## Summary
normalise expressions in various ways
-/

/- Tactic : .mp, .mpr
## Summary
extracts implications from left to right (or right to
left, respectively) from equivalences
-/

/- Tactic : .symm
## Summary
converts equalities x = y into y = x.
-/

/- 
this is a placeholder
-/