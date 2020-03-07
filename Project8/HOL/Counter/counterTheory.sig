signature counterTheory =
sig
  type thm = Thm.thm

  (*  Definitions  *)
    val ctrOut_TY_DEF : thm
    val ctrOut_case_def : thm
    val ctrOut_size_def : thm
    val ctrState_TY_DEF : thm
    val ctrState_case_def : thm
    val ctrState_size_def : thm
    val ctrcmd_TY_DEF : thm
    val ctrcmd_case_def : thm
    val ctrcmd_size_def : thm

  (*  Theorems  *)
    val ctrNS_def : thm
    val ctrNS_ind : thm
    val ctrOut_11 : thm
    val ctrOut_Axiom : thm
    val ctrOut_case_cong : thm
    val ctrOut_def : thm
    val ctrOut_ind : thm
    val ctrOut_induction : thm
    val ctrOut_nchotomy : thm
    val ctrOut_one_one : thm
    val ctrState_11 : thm
    val ctrState_Axiom : thm
    val ctrState_case_cong : thm
    val ctrState_induction : thm
    val ctrState_nchotomy : thm
    val ctrState_one_one : thm
    val ctrTR_clauses : thm
    val ctrTR_rules : thm
    val ctrTrans_Equiv_TR : thm
    val ctr_rules : thm
    val ctrcmd_11 : thm
    val ctrcmd_Axiom : thm
    val ctrcmd_case_cong : thm
    val ctrcmd_distinct : thm
    val ctrcmd_distinct_clauses : thm
    val ctrcmd_induction : thm
    val ctrcmd_nchotomy : thm
    val datatype_ctrOut : thm
    val datatype_ctrState : thm
    val datatype_ctrcmd : thm

  val counter_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [sm] Parent theory of "counter"

   [ctrOut_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'ctrOut' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'ctrOut' a0) ⇒
                  'ctrOut' a0) rep

   [ctrOut_case_def]  Definition

      |- ∀a f. ctrOut_CASE (DISPLAY a) f = f a

   [ctrOut_size_def]  Definition

      |- ∀a. ctrOut_size (DISPLAY a) = 1 + a

   [ctrState_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'ctrState' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ⇒
                     'ctrState' a0) ⇒
                  'ctrState' a0) rep

   [ctrState_case_def]  Definition

      |- ∀a f. ctrState_CASE (COUNT a) f = f a

   [ctrState_size_def]  Definition

      |- ∀a. ctrState_size (COUNT a) = 1 + a

   [ctrcmd_TY_DEF]  Definition

      |- ∃rep.
           TYPE_DEFINITION
             (λa0.
                ∀'ctrcmd' .
                  (∀a0.
                     (∃a.
                        a0 =
                        (λa. ind_type$CONSTR 0 a (λn. ind_type$BOTTOM))
                          a) ∨
                     (a0 =
                      ind_type$CONSTR (SUC 0) ARB (λn. ind_type$BOTTOM)) ∨
                     (a0 =
                      ind_type$CONSTR (SUC (SUC 0)) ARB
                        (λn. ind_type$BOTTOM)) ⇒
                     'ctrcmd' a0) ⇒
                  'ctrcmd' a0) rep

   [ctrcmd_case_def]  Definition

      |- (∀a f v v1. ctrcmd_CASE (load a) f v v1 = f a) ∧
         (∀f v v1. ctrcmd_CASE count f v v1 = v) ∧
         ∀f v v1. ctrcmd_CASE hold f v v1 = v1

   [ctrcmd_size_def]  Definition

      |- (∀a. ctrcmd_size (load a) = 1 + a) ∧ (ctrcmd_size count = 0) ∧
         (ctrcmd_size hold = 0)

   [ctrNS_def]  Theorem

      |- (ctrNS (COUNT n) (load k) = COUNT k) ∧
         (ctrNS (COUNT n) count = COUNT (n − 1)) ∧
         (ctrNS (COUNT n) hold = COUNT n)

   [ctrNS_ind]  Theorem

      |- ∀P.
           (∀n k. P (COUNT n) (load k)) ∧ (∀n. P (COUNT n) count) ∧
           (∀n. P (COUNT n) hold) ⇒
           ∀v v1. P v v1

   [ctrOut_11]  Theorem

      |- ∀a a'. (DISPLAY a = DISPLAY a') ⇔ (a = a')

   [ctrOut_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (DISPLAY a) = f a

   [ctrOut_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = DISPLAY a) ⇒ (f a = f' a)) ⇒
           (ctrOut_CASE M f = ctrOut_CASE M' f')

   [ctrOut_def]  Theorem

      |- (ctrOut (COUNT n) (load k) = DISPLAY k) ∧
         (ctrOut (COUNT n) count = DISPLAY (n − 1)) ∧
         (ctrOut (COUNT n) hold = DISPLAY n)

   [ctrOut_ind]  Theorem

      |- ∀P.
           (∀n k. P (COUNT n) (load k)) ∧ (∀n. P (COUNT n) count) ∧
           (∀n. P (COUNT n) hold) ⇒
           ∀v v1. P v v1

   [ctrOut_induction]  Theorem

      |- ∀P. (∀n. P (DISPLAY n)) ⇒ ∀c. P c

   [ctrOut_nchotomy]  Theorem

      |- ∀cc. ∃n. cc = DISPLAY n

   [ctrOut_one_one]  Theorem

      |- ∀a a'. (DISPLAY a = DISPLAY a') ⇔ (a = a')

   [ctrState_11]  Theorem

      |- ∀a a'. (COUNT a = COUNT a') ⇔ (a = a')

   [ctrState_Axiom]  Theorem

      |- ∀f. ∃fn. ∀a. fn (COUNT a) = f a

   [ctrState_case_cong]  Theorem

      |- ∀M M' f.
           (M = M') ∧ (∀a. (M' = COUNT a) ⇒ (f a = f' a)) ⇒
           (ctrState_CASE M f = ctrState_CASE M' f')

   [ctrState_induction]  Theorem

      |- ∀P. (∀n. P (COUNT n)) ⇒ ∀c. P c

   [ctrState_nchotomy]  Theorem

      |- ∀cc. ∃n. cc = COUNT n

   [ctrState_one_one]  Theorem

      |- ∀a a'. (COUNT a = COUNT a') ⇔ (a = a')

   [ctrTR_clauses]  Theorem

      |- (∀x x1s s1 out1s x2s out2s s2.
            TR x (CFG x1s s1 out1s) (CFG x2s s2 out2s) ⇔
            ∃NS Out ins.
              (x1s = x::ins) ∧ (x2s = ins) ∧ (s2 = NS s1 x) ∧
              (out2s = Out s1 x::out1s)) ∧
         ∀x x1s s1 out1s x2s out2s.
           TR x (CFG x1s s1 out1s)
             (CFG x2s (ctrNS s1 x) (ctrOut s1 x::out2s)) ⇔
           ∃ins. (x1s = x::ins) ∧ (x2s = ins) ∧ (out2s = out1s)

   [ctrTR_rules]  Theorem

      |- ∀s x ins outs.
           TR x (CFG (x::ins) s outs)
             (CFG ins (ctrNS s x) (ctrOut s x::outs))

   [ctrTrans_Equiv_TR]  Theorem

      |- TR x (CFG (x::ins) s outs)
           (CFG ins (ctrNS s x) (ctrOut s x::outs)) ⇔ Trans x s (ctrNS s x)

   [ctr_rules]  Theorem

      |- (∀ins outs.
            TR (load new) (CFG (load new::ins) (COUNT n) outs)
              (CFG ins (COUNT new) (DISPLAY new::outs))) ∧
         (∀ins outs.
            TR count (CFG (count::ins) (COUNT n) outs)
              (CFG ins (COUNT (n − 1)) (DISPLAY (n − 1)::outs))) ∧
         ∀ins outs.
           TR hold (CFG (hold::ins) (COUNT n) outs)
             (CFG ins (COUNT n) (DISPLAY n::outs))

   [ctrcmd_11]  Theorem

      |- ∀a a'. (load a = load a') ⇔ (a = a')

   [ctrcmd_Axiom]  Theorem

      |- ∀f0 f1 f2.
           ∃fn. (∀a. fn (load a) = f0 a) ∧ (fn count = f1) ∧ (fn hold = f2)

   [ctrcmd_case_cong]  Theorem

      |- ∀M M' f v v1.
           (M = M') ∧ (∀a. (M' = load a) ⇒ (f a = f' a)) ∧
           ((M' = count) ⇒ (v = v')) ∧ ((M' = hold) ⇒ (v1 = v1')) ⇒
           (ctrcmd_CASE M f v v1 = ctrcmd_CASE M' f' v' v1')

   [ctrcmd_distinct]  Theorem

      |- (∀a. load a ≠ count) ∧ (∀a. load a ≠ hold) ∧ count ≠ hold

   [ctrcmd_distinct_clauses]  Theorem

      |- (∀a. load a ≠ count) ∧ (∀a. load a ≠ hold) ∧ count ≠ hold

   [ctrcmd_induction]  Theorem

      |- ∀P. (∀n. P (load n)) ∧ P count ∧ P hold ⇒ ∀c. P c

   [ctrcmd_nchotomy]  Theorem

      |- ∀cc. (∃n. cc = load n) ∨ (cc = count) ∨ (cc = hold)

   [datatype_ctrOut]  Theorem

      |- DATATYPE (ctrOut DISPLAY)

   [datatype_ctrState]  Theorem

      |- DATATYPE (ctrState COUNT)

   [datatype_ctrcmd]  Theorem

      |- DATATYPE (ctrcmd load count hold)


*)
end
