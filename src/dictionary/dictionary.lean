/- Dictionary : assume
## Summary
introduces an identifer, as preparation for a proof of
an all-statement or an implication
-/

/- Dictionary : unfold
## Summary
unfolds a definition
-/

/- Dictionary : use
## Summary
prove an existential statement from an example
-/

/- Dictionary : rcases
## Summary
recursive pattern matching;
extracts, e.g., a witness from an existential term
-/

/- Dictionary : cases
## Summary
proof by case distinction
-/

/- Dictionary : induction
## Summary
proof by induction (not only over natural numbers)
-/

/- Dictionary : hint, suggest,
library_search
## Summary
tactics that search for ways to make progress in the
proof
-/

/- Dictionary : sorry
## Summary
pretends to be a proof (useful for developing the overall
structure of a proof)
or a value of the given type (usually dangerous)
-/

/- Dictionary : exact
## Summary
solves the current goal by giving an exact proof term
-/

/- Dictionary : refine
## Summary
like exact, but can contain wildcards/holes _
that may lead to new goals
-/

/- Dictionary : apply
## Summary
tries to match the conclusion of the argument to the
current goal; might create new goals
-/

/- Dictionary : simp, dsimp
## Summary
tries to use lemmas and hypotheses to simplify the
current goal;
dsimp is like simp, using only definitional equalities
-/

/- Dictionary : rw
## Summary
applies the argument as a rewrite rule to the current
goal
-/

/- Dictionary : refl
## Summary
tries to resolve the goal through denitional equality
-/

/- Dictionary : tauto, tauto!,
finish
## Summary
Finishing tactics, trying to solve the goal completely
using basic logic, definitional equalities, etc.
-/

/- Dictionary : arith, linarith,
omega, ring
## Summary
tactics that handle arithmetic equalities and inequalities
of various types; particularly convenient in combination
with calc
-/

/- Dictionary : norm_num,
norm_cast
## Summary
normalise expressions in various ways
-/

/- Dictionary : .mp, .mpr
## Summary
extracts implications from left to right (or right to
left, respectively) from equivalences
-/

/- Dictionary : .symm
## Summary
converts equalities x = y into y = x.
-/

/- 
this is a placeholder
-/