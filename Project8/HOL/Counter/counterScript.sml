(******************************************************************************)
(* Name: Kyle Peppe                                                           *)
(* Exercise 16.3.2                                                            *)
(* Date: 3/1/20                                                               *)
(******************************************************************************)

(* Beginning structure and open commands                *)
structure counterScript = struct
open HolKernel Parse boolLib bossLib;
open TypeBase smTheory sminfRules

(* Set new theory                                       *)
val _ = new_theory "counter";

(* Setting the datatypes                                *)
(* Part A						*)
val _ = Datatype `ctrcmd = load num | count | hold`
val ctrcmd_distinct_clauses = distinct_of``:ctrcmd``
(* Save the Theorem					*)
val _ = save_thm("ctrcmd_distinct_clauses",ctrcmd_distinct_clauses)

val _ = Datatype `ctrState = COUNT num`
val ctrState_one_one = one_one_of``:ctrState``
(* Save the Theorem					*)
val _ = save_thm("ctrState_one_one",ctrState_one_one)

val _ = Datatype `ctrOut = DISPLAY num`
val ctrOut_one_one = one_one_of``:ctrOut``
(* Save the Theorem					*)
val _ = save_thm("ctrOut_one_one",ctrOut_one_one)

(* Part B						*)
(* Defining variables                                   *)
val ctrNS_def = Define
    	      `(ctrNS (COUNT n) (load k) = (COUNT k)) /\
    	      (ctrNS (COUNT n) (count) = (COUNT (n-1))) /\
    	      (ctrNS (COUNT n) (hold) = (COUNT n))`; 

val ctrOut_def = Define
    	       `(ctrOut (COUNT n) (load k) = (DISPLAY k)) /\
 	       	(ctrOut (COUNT n) (count) = (DISPLAY (n-1))) /\
 		(ctrOut (COUNT n) (hold) = (DISPLAY n))`;

(* Part C                                               *)
val ctrTR_rules = SPEC_TR ``ctrNS`` ``ctrOut``

(* Save the Theorem					*)
val _ = save_thm("ctrTR_rules",ctrTR_rules)

val ctrTR_clauses = SPEC_TR_clauses ``ctrNS`` ``ctrOut``

(* Save the Theorem					*)
val _ = save_thm("ctrTR_clauses",ctrTR_clauses)

val ctrTrans_Equiv_TR = SPEC_Trans_Equiv_TR ``ctrNS`` ``ctrOut``

(* Save the Theorem					*)
val _ = save_thm("ctrTrans_Equiv_TR",ctrTrans_Equiv_TR)

val th1 = REWRITE_RULE [ctrNS_def,ctrOut_def] (SPECL[``COUNT n``,``load new``] ctrTR_rules)
val th2 = REWRITE_RULE [ctrNS_def,ctrOut_def] (SPECL[``COUNT n``,``count``] ctrTR_rules)
val th3 = REWRITE_RULE [ctrNS_def,ctrOut_def] (SPECL[``COUNT n``,``hold``] ctrTR_rules) 
val ctr_rules = LIST_CONJ [th1,th2,th3]

(* Save the Theorem					*)
val _ = save_thm("ctr_rules",ctr_rules)

(* Export and print the theory                          *)
val _ = export_theory();
val _ = print_theory "-";

end