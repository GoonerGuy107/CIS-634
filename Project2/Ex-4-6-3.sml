(******************************************************************************)
(* Authoer: Kyle Peppe                                                        *)
(* Exercise 4.6.3                                                             *)
(* Date: 1/14/20                                                              *)
(******************************************************************************)

(* Part A			*)
(* Using val and fn		*)
val funA1 = (fn x => (fn y => (fn z => x + y + x)));

(* Using fun	     	      	*)
fun funA2 (x,y,z) = x + y + z;

(* Part B     	      		*)
(* Using val and fn		*)
val funB1 = (fn x => (fn y => x < y));

(* Using fun	     	      	*)
fun funB2 (x,y) = x < y;

(* Part C			*)
(* Using val and fn		*)
val funC1 = (fn s1 => (fn s2 => s1 ^ s2));

(* Using fun	      	     	*)
fun funC2 (s1, s2) = s1 ^ s2;

(* Part D			*)
(* Using val and fn		*)
val funD1 = (fn list1 => (fn list2 => list1 @ list2));

(* Using fun			*)
fun funD2 (list1, list2) = list1 @ list2;

(* Part E 	  	   	*)
(Using val and fn		*)
val funE1 = (fn x => (fn y => if x > y then x else y));

(* Using fun	     	      	*)
fun funE2 (x,y) = if x > y then x else y;