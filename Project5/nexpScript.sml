(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 11.6.3                                                            *)
(* Date: 2/4/20                                                               *)
(******************************************************************************)


(* Beginning Commands			*)
structure exTypeScript = struct
open HolKernel Parse boolLib bossLib;
open boolTheory TypeBase arithmeticTheory

(* Command to set the theory		*)
val _ = new_theory "nexp";

val _ = Datatype `nexp = Num num | Add nexp nexp | Sub nexp nexp | Mult nexp nexp`;

val nexpValDef =
Define
	`(nexpVal (Num num) = num) /\ (nexpVal (Add f1 f2) = (nexpVal f1) + (nexpVal f2))
	/\ (nexpVal (Sub f1 f2) = (nexpVal f1) - (nexpVal f2))
	/\ (nexpVal (Mult f1 f2) = (nexpVal f1) * (nexpVal f2))`;

(* Add_0   	    	     	   	*)
val Add_0 =
TAC_PROOF(
	([], ``!(f:nexp).nexpVal (Add (Num 0) f) = nexpVal f``),
	Induct_on `f` THEN
	ASM_REWRITE_TAC[ADD_CLAUSES, nexpValDef]
);

(* Save the Theorem			*)
val _ = save_thm("Add_0", Add_0);

(* Add_SYM				*)
val Add_SYM =
TAC_PROOF(
	([], ``!(f1:nexp)(f2:nexp).nexpVal (Add f1 f2) = nexpVal (Add f2 f1)``),
	Induct_on `f1` THEN
	PROVE_TAC[nexpValDef, ADD_SYM]
);

(* Save the Theorem			*)
val _ = save_thm("Add_SYM", Add_SYM);

(* Sub_0				*)
val Sub_0 =
TAC_PROOF(
	([],``!(f:nexp).(nexpVal (Sub (Num 0) f) = 0) /\
	(nexpVal (Sub f (Num 0)) = nexpVal f)``),
	Induct_on`f` THEN
	PROVE_TAC[nexpValDef, SUB_0]
);

(* Save the Theorem			*)
val _ = save_thm("Sub_0", Sub_0);

(* Mult_ASSOC				*)
val Mult_ASSOC =
TAC_PROOF(
	([],``!(f1:nexp)(f2:nexp)(f3:nexp).nexpVal (Mult f1 (Mult f2 f3)) =
	nexpVal (Mult (Mult f1 f2) f3)``),
	Induct_on`f1` THEN
	ASM_REWRITE_TAC[MULT_ASSOC, nexpValDef]
);

(* Save the Theorem			*)
val _ = save_thm("Mult_ASSOC", Mult_ASSOC);

(*Exporting the Theorem			*)
val _ = export_theory();

val _ = print_theory "-";

end