signature chapter8Theory =
sig
  type thm = Thm.thm

  (*  Theorems  *)
    val conjSymThm : thm
    val conjSymThmAll : thm
    val problem1Thm : thm

  val chapter8_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "chapter8"

   [patternMatches] Parent theory of "chapter8"

   [conjSymThm]  Theorem

      |- p ∧ q ⇔ q ∧ p

   [conjSymThmAll]  Theorem

      |- ∀p q. p ∧ q ⇔ q ∧ p

   [problem1Thm]  Theorem

      [oracles: ] [axioms: ] [p] |- (q ⇒ r) ⇒ (p ⇒ q) ⇒ (q ⇒ r) ⇒ q


*)
end
