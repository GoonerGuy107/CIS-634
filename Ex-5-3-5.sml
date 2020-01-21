(******************************************************************************)
(* Author: Kyle Peppe                                                         *)
(* Exercise 5.3.5                                                             *)
(* Date: 1/19/20                                                              *)
(******************************************************************************)


fun addpair (x,y) = x + y;
fun Filter n xlist = filter(fn (x,y) => y>n andalso x>n) xlist;
fun addlist xlist = map addpair xlist;
fun addPairsGreaterThan y xlist = (addlist (Filter y xlist));

(* Running the new Fun using the provided Test Case			      *)
addPairsGreaterThan 0 [(0,1),(2,0),(2,3),(4,5)];
