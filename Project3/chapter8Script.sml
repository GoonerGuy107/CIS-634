(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercises 8.4.1, 8.4.2, and 8.4.3                                          *)
(* Date: 1/22/20                                                              *)
(******************************************************************************)

(* Opening code needed for new theory file	*)
structure chapter8Script = struct
open HolKernel Parse boolLib bossLib;
val _ = new_theory "chapter8";


(* Exercise 8.4.1				*)
val problem1Thm =
let
	val th1 = ASSUME ``p:bool``
	val th2 = ASSUME ``p ==> q``
	val th3 = ASSUME ``q ==> r``
	val th4 = MP th2 th1
	val th5 = MP th3 th4
	val t1 = hd(hyp th1)
	val t2 = hd(hyp th2)
	val t3 = hd(hyp th3)
	val th6 = DISCH t3 th4
	val th7 = DISCH t2 th6
in
	DISCH t3 th7
end

val _ = save_thm("problem1Thm", problem1Thm);


(* Exercise 8.4.2				*)
val conjSymThm =
let
	val th1 = ASSUME ``p /\ q``
	val th2 = ASSUME ``q /\ p``
	val ab = CONJUNCT1 th1
	val cd = CONJUNCT2 th1
	val ba = CONJUNCT2 th2
	val bc = CONJUNCT1 th2
	val th3 = CONJ cd ab
	val th4 = CONJ ba bc
	val t1 = hd(hyp th1)
	val t2 = hd(hyp th2)
	val th5 = DISCH t1 th3
	val th6 = DISCH t2 th4
in
	IMP_ANTISYM_RULE th5 th6
end

val _ = save_thm("conjSymThm", conjSymThm);


(* Exercise 8.4.3				*)
val conjSymThmAll = GENL [``p:bool``, ``q:bool``] conjSymThm;

val _ = save_thm("conjSymThmAll", conjSymThmAll);

(* Export Theory				*)
val _ = export_theory();

end