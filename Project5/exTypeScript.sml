(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercises 11.6.1 and 11.6.2                                                *)
(* Date: 2/3/20                                                               *)
(******************************************************************************)

(* Beginning theory commands		*)
structure exTypeScript = struct
open HolKernel Parse boolLib bossLib;
open listTheory TypeBase arithmeticTheory

val _ = new_theory "exType";

(* APP_def from the book		*)
val APP_def =
Define
	`(APP [] (l:'a list) = l) /\ (APP (h::(l1:'a list)) (l2:'a list)
	= h::(APP l1 l2))`;

(* APP_ASSOC from the book		*)
val APP_ASSOC =
TAC_PROOF(
	([],
	``!(l1:'a list)(l2:'a list)(l3:'a list).(APP(APP l1 l2) l3)
	= (APP l1 (APP l2 l3))``),
	Induct_on `l1` THEN
	PROVE_TAC[APP_def]
);

(* Save the Theorem			*)
val _ = save_thm("APP_ASSOC", APP_ASSOC);

(* Exercise 11.6.1			*)
val LENGTH_APP =
TAC_PROOF(
	([], ``!(l1:'a list)(l2:'a list).LENGTH (APP l1 l2)
	= LENGTH l1 + LENGTH l2``),
	Induct_on `l1` THEN
	ASM_REWRITE_TAC [APP_def, LENGTH, ADD_CLAUSES]
);

(* Save the Theorem			*)
val _ = save_thm("LENGTH_APP", LENGTH_APP);

(* Exercise 11.6.2			*)
val Map_def =
Define
	`(Map (f:'a -> 'b) [] = []) /\ (Map f (h::(l1:'a list))
	= (f h)::Map f (l1:'a list))`;


val Map_APP =
TAC_PROOF (
	  ([], ``Map f(APP l1 l2) = APP (Map f l1) (Map f l2)``),
	  Induct_on `l1` THEN
	  ASM_REWRITE_TAC[Map_def, APP_def]
);

(* Save the Theorem			*)
val _ = save_thm("Map_APP", Map_APP);

(* Exporting and printing the theory	*)
val _ = export_theory();
val _ = print_theory "-";

end