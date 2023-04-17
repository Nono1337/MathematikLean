/- Tactic : simp
## Summary
tries to use lemmas and hypotheses to simplify the
current goal;
-/

/-
# Simp

	The simp tactic uses lemmas and hypotheses to simplify the main goal target or non-dependent hypotheses. It has many variants.

	simp simplifies the main goal target using lemmas tagged with the attribute [simp].

	simp [h₁ h₂ ... h`n`] simplifies the main goal target using the lemmas tagged with the attribute [simp] and the given hᵢ’s, where the hᵢ’s are expressions. These expressions may contain underscores, in which case they are replaced by metavariables that simp tries to instantiate. If a hᵢ is a defined constant f, then the equational lemmas associated with f are used. This provides a convenient way to unfold f.

	simp [*] simplifies the main goal target using the lemmas tagged with the attribute [simp] and all hypotheses.

	simp * is a shorthand for simp [*].

	simp only [h₁ h₂ ... h`n`] is like simp [h₁ h₂ ... h`n`] but does not use [simp] lemmas

	simp [-id₁, ... -id`n`] simplifies the main goal target using the lemmas tagged with the attribute [simp], but removes the ones named idᵢ.

	simp at h₁ h₂ ... h`n` simplifies the non-dependent hypotheses h₁ : T₁ … h`n` : T`n`. The tactic fails if the target or another hypothesis depends on one of them. The token ⊢ or |- can be added to the list to include the target.

	simp at * simplifies all the hypotheses and the target.

	simp * at * simplifies target and all (non-dependent propositional) hypotheses using the other hypotheses.

	simp with attr₁ ... attr`n` simplifies the main goal target using the lemmas tagged with any of the attributes [attr₁], …, [attr`n`] or [simp].
	
-/


