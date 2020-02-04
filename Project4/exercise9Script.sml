(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercises 9.5.1, 9.5.2, and 9.5.3                                          *)
(* Date: 1/26/20                                                              *)
(******************************************************************************)

(* Commands needed to create the theory file		*)
structure exercise9Script = struct

open HolKernel Parse boolLib bossLib;

val _ = new_theory "exercise9";


(* Exercise 9.5.1					*)
val absorptionRule =
TAC_PROOF
(
	([], ``!(p:bool)(q:bool).(p ==> q) ==> p ==> p /\ q``),
	(REPEAT STRIP_TAC THENL
	[(ACCEPT_TAC (ASSUME ``p:bool``)),
	RES_TAC])
);

(* Save the theorem					*)
val _ = save_thm("absorptionRule", absorptionRule);


(* Exercise 9.5.2					*)
val constructiveDilemmaRule =
TAC_PROOF
(
	([], ``!(p:bool)(q:bool)(r:bool)(s:bool).
	(p ==> q) /\ (r ==> s) ==> p \/ r ==> q \/ s``),
	(REPEAT STRIP_TAC THEN
	RES_TAC THEN
	ASM_REWRITE_TAC[] THEN
	RES_TAC THEN
	ASM_REWRITE_TAC[])
);

(* Save the theorem					*)
val _ = save_thm("constructiveDeilemmaRule", constructiveDilemmaRule);


(* Exercise 9.5.3					*)
(* Using PROVE_TAC on Exercise 9.5.1			*)
val absorptionRule2 =
TAC_PROOF
(
	([], ``!(p:bool)(q:bool).(p ==> q) ==> p ==> p /\ q``),
	(PROVE_TAC[])
);

(* Save the theorem					*)
val _ = save_thm("absorptionRule2", absorptionRule2);


(* Exercise 9.5.3					*)
(* Using PROVE_TAC on Exercise 9.5.2			*)
val constructiveDilemmaRule2 =
TAC_PROOF
(
	([], ``!(p:bool)(q:bool)(r:bool)(s:bool).
	(p ==> q) /\ (r==> s) ==> p \/ r ==> q \/ s``),
	(PROVE_TAC[])
);

(* Save the theorem					*)
val _ = save_thm("constructiveDilemmaRule2", constructiveDilemmaRule2);

(* Command to export the above theories			*)
val _ = export_theory();

end