(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 6.2.1                                                             *)
(* Date: 1/20/20                                                              *)
(******************************************************************************)

(* Part 1		*)
``x``;
``y``;
``P x``;
``Q y``;
``P x ==> Q y``;

(* Part 2		*)
``x:num``;
``y:bool``;
``P x:num``;
``Q y:bool``;
``P (x:num) ==> Q (y:bool)``;

(* Part 3		*)
``x``;
``y``;
``P x``;
``Q y``;
``!x. !y. P(x) ==> Q(y)``;

(* Part 4		*)
``x:num``;
``R(x:num)``;
``?x. R(x:num)``;

(* Part 5		*)
``~!x.(P(x) \/ Q(x)) = ?x.(~P(x) /\ ~Q(x))``;

(* Part 6      	       	*)
``!x.P(x) ==> M(x)``;

(* Part 7		*)
``!x.P(x) ==> ?x.Funny(x)``;