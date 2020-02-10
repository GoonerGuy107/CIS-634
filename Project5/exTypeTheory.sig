signature exTypeTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val APP_def : thm
    val Map_def : thm

  (*  Theorems  *)
    val APP_ASSOC : thm
    val LENGTH_APP : thm
    val Map_APP : thm

  val exType_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "exType"

   [patternMatches] Parent theory of "exType"

   [APP_def]  Definition

      |- (∀l. APP [] l = l) ∧ ∀h l1 l2. APP (h::l1) l2 = h::APP l1 l2

   [Map_def]  Definition

      |- (∀f. Map f [] = []) ∧ ∀f h l1. Map f (h::l1) = f h::Map f l1

   [APP_ASSOC]  Theorem

      |- ∀l1 l2 l3. APP (APP l1 l2) l3 = APP l1 (APP l2 l3)

   [LENGTH_APP]  Theorem

      |- ∀l1 l2. LENGTH (APP l1 l2) = LENGTH l1 + LENGTH l2

   [Map_APP]  Theorem

      |- Map f (APP l1 l2) = APP (Map f l1) (Map f l2)


*)
end
