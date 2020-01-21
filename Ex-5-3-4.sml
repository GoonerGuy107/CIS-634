(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 5.3.4                                                             *)
(* Date: 1/18/20                                                              *)
(******************************************************************************)

(* Setting up the Filter						      *)
filter (fn x => x < 5);

(* Creating variable where the results from Test will be returned	      *)
(* Returning the results from the filter				      *)
val testResults = filter (fn x => x < 5) [1,2,3,4,5,6,7,8,9];