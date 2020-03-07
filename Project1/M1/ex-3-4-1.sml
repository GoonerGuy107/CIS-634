(******************************************************************************)
(* Exercise 3.4.1                                                             *)
(* Author: Kyle Peppe                                                         *)
(* Date: 1/9/2020                                                             *)
(******************************************************************************)

(* Part A				*)
(* New List of Pairs			*)
val [(x1, y1), (x2, y2), (x3, y3), (x4, y4)] = [(0, "Alice"), (1, "Bob"), (3, "Carol"), (4, "Dan")];

(* Setting listA to values above   	*) 
val listA =  [(x1, y1), (x2, y2), (x3, y3), (x4, y4)];
(* End of Part A   	     	        *)

(* Part B				*)
val (e1B :: listB) = listA;
(* End of Part B     	   	     	*)

(* Part C				*)
val (e1C1, e1C2) = e1B;
val (e1C3 :: temp) = listB;
val (e1C4 :: e1C5) = temp;
(* End of Part C			*)