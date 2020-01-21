(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 4.6.4                                                             *)
(* Date: 1/16/20                                                              *)
(******************************************************************************)

(* Create a function that takes a list and find the square value of it	      *)
fun listSquares intList =
let
	fun square x = x * x;
in
	(map square intList)
end;

(* Creating the test list from the handout				      *)
val testList = [1,2,3,4,5];

(* Creating a new list that will contain the result of the above testList     *)
val testResults = listSquares testList;