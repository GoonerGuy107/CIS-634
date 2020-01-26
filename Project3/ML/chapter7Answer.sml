(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 7.3.1, 7.3.2, and 7.3.3                                           *)
(* Date: 1/21/20                                                              *)
(******************************************************************************)

(* Exercise 7.3.1			*)
(* Val first				*)
val andImpTerm = ``p /\ q ==> r``;

(* Now creating Function		*)
fun andImp2Imp term = ``p ==> q ==> r``;

(* Combining the 2			*)
andImp2Imp andImpTerm;

(* Exercise 7.3.2			*)
fun andImp2Imp term = ``p ==> q ==> r``;
fun impImpAnd term = ``p /\ q ==> r``;

val v1 = andImp2Imp ``p /\ q ==> r``;
val v2 = impImpAnd v1;
val v3 = andImp2Imp v2;

(* Exercise 7.3.3			*)
fun notExists term = ``!x.~P(x)``;
notExists ``~?z.Q(z)``;