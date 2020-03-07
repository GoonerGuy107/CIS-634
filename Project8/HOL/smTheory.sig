signature smTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val TR_def : thm
    val Trans_def : thm
    val configuration_TY_DEF : thm
    val configuration_case_def : thm
    val configuration_size_def : thm

  (*  Theorems  *)
    val TR_Trans_lemma : thm
    val TR_cases : thm
    val TR_clauses : thm
    val TR_complete : thm
    val TR_deterministic : thm
    val TR_ind : thm
    val TR_rules : thm
    val TR_strongind : thm
    val Trans_Equiv_TR : thm
    val Trans_TR_lemma : thm
    val Trans_cases : thm
    val Trans_ind : thm
    val Trans_rules : thm
    val Trans_strongind : thm
    val configuration_11 : thm
    val configuration_Axiom : thm
    val configuration_case_cong : thm
    val configuration_induction : thm
    val configuration_nchotomy : thm
    val configuration_one_one : thm
    val datatype_configuration : thm

  val sm_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "sm"

   [patternMatches] Parent theory of "sm"

   [TR_def]  Definition

      |- TR =
         (λa0 a1 a2.
            ∀TR'.
              (∀a0 a1 a2.
                 (∃NS Out s ins outs.
                    (a1 = CFG (a0::ins) s outs) ∧
                    (a2 = CFG ins (NS s a0) (Out s a0::outs))) ⇒
                 TR' a0 a1 a2) ⇒
              TR' a0 a1 a2)

   [Trans_def]  Definition

      |- Trans =
         (λa0 a1 a2.
            ∀Trans'.
              (∀a0 a1 a2. (∃NS. a2 = NS a1 a0) ⇒ Trans' a0 a1 a2) ⇒
              Trans' a0 a1 a2)

   [configuration_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0'.
                ∀'configuration' .
                  (∀a0'.
                     (∃a0 a1 a2.
                        a0' =
                        (λa0 a1 a2.
                           ind_type$CONSTR 0 (a0,a1,a2)
                             (λn. ind_type$BOTTOM)) a0 a1 a2) ⇒
                     'configuration' a0') ⇒
                  'configuration' a0') rep

   [configuration_case_def]  Definition

      |- ∀a0 a1 a2 f. configuration_CASE (CFG a0 a1 a2) f = f a0 a1 a2

   [configuration_size_def]  Definition

      |- ∀f f1 f2 a0 a1 a2.
           configuration_size f f1 f2 (CFG a0 a1 a2) =
           1 + (list_size f a0 + (f2 a1 + list_size f1 a2))

   [TR_Trans_lemma]  Theorem

      |- TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs)) ⇒
         Trans x s (NS s x)

   [TR_cases]  Theorem

      |- ∀a0 a1 a2.
           TR a0 a1 a2 ⇔
           ∃NS Out s ins outs.
             (a1 = CFG (a0::ins) s outs) ∧
             (a2 = CFG ins (NS s a0) (Out s a0::outs))

   [TR_clauses]  Theorem

      |- (∀x x1s s1 out1s x2s out2s s2.
            TR x (CFG x1s s1 out1s) (CFG x2s s2 out2s) ⇔
            ∃NS Out ins.
              (x1s = x::ins) ∧ (x2s = ins) ∧ (s2 = NS s1 x) ∧
              (out2s = Out s1 x::out1s)) ∧
         ∀NS Out x x1s s1 out1s x2s out2s.
           TR x (CFG x1s s1 out1s) (CFG x2s (NS s1 x) (Out s1 x::out2s)) ⇔
           ∃ins. (x1s = x::ins) ∧ (x2s = ins) ∧ (out2s = out1s)

   [TR_complete]  Theorem

      |- ∀s x ins outs.
           ∃s' out. TR x (CFG (x::ins) s outs) (CFG ins s' (out::outs))

   [TR_deterministic]  Theorem

      |- ∀NS Out x1 ins1 s1 outs1 ins2 ins2' outs2 outs2'.
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2 (NS s1 x1) (Out s1 x1::outs2)) ∧
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2' (NS s1 x1) (Out s1 x1::outs2')) ⇔
           (CFG ins2 (NS s1 x1) (Out s1 x1::outs2) =
            CFG ins2' (NS s1 x1) (Out s1 x1::outs2')) ∧
           TR x1 (CFG (x1::ins1) s1 outs1)
             (CFG ins2 (NS s1 x1) (Out s1 x1::outs2))

   [TR_ind]  Theorem

      |- ∀TR'.
           (∀NS Out s x ins outs.
              TR' x (CFG (x::ins) s outs)
                (CFG ins (NS s x) (Out s x::outs))) ⇒
           ∀a0 a1 a2. TR a0 a1 a2 ⇒ TR' a0 a1 a2

   [TR_rules]  Theorem

      |- ∀NS Out s x ins outs.
           TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs))

   [TR_strongind]  Theorem

      |- ∀TR'.
           (∀NS Out s x ins outs.
              TR' x (CFG (x::ins) s outs)
                (CFG ins (NS s x) (Out s x::outs))) ⇒
           ∀a0 a1 a2. TR a0 a1 a2 ⇒ TR' a0 a1 a2

   [Trans_Equiv_TR]  Theorem

      |- TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs)) ⇔
         Trans x s (NS s x)

   [Trans_TR_lemma]  Theorem

      |- Trans x s (NS s x) ⇒
         TR x (CFG (x::ins) s outs) (CFG ins (NS s x) (Out s x::outs))

   [Trans_cases]  Theorem

      |- ∀a0 a1 a2. Trans a0 a1 a2 ⇔ ∃NS. a2 = NS a1 a0

   [Trans_ind]  Theorem

      |- ∀Trans'.
           (∀NS s x. Trans' x s (NS s x)) ⇒
           ∀a0 a1 a2. Trans a0 a1 a2 ⇒ Trans' a0 a1 a2

   [Trans_rules]  Theorem

      |- ∀NS s x. Trans x s (NS s x)

   [Trans_strongind]  Theorem

      |- ∀Trans'.
           (∀NS s x. Trans' x s (NS s x)) ⇒
           ∀a0 a1 a2. Trans a0 a1 a2 ⇒ Trans' a0 a1 a2

   [configuration_11]  Theorem

      |- ∀a0 a1 a2 a0' a1' a2'.
           (CFG a0 a1 a2 = CFG a0' a1' a2') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2')

   [configuration_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a0 a1 a2. fn (CFG a0 a1 a2) = f a0 a1 a2

   [configuration_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧
           (∀a0 a1 a2. (M' = CFG a0 a1 a2) ⇒ (f a0 a1 a2 = f' a0 a1 a2)) ⇒
           (configuration_CASE M f = configuration_CASE M' f')

   [configuration_induction]  Theorem

      |- ∀P. (∀l s l0. P (CFG l s l0)) ⇒ ∀c. P c

   [configuration_nchotomy]  Theorem

      |- ∀cc. ∃l s l0. cc = CFG l s l0

   [configuration_one_one]  Theorem

      |- ∀a0 a1 a2 a0' a1' a2'.
           (CFG a0 a1 a2 = CFG a0' a1' a2') ⇔
           (a0 = a0') ∧ (a1 = a1') ∧ (a2 = a2')

   [datatype_configuration]  Theorem

      |- DATATYPE (configuration CFG)


*)
end
