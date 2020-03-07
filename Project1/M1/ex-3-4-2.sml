(******************************************************************************)
(* Exercise 3.4.2                                                             *)
(* Author: Kyle Peppe                                                         *)
(* Date: 1/9/20                                                               *)
(******************************************************************************)

(* Code from the text book						      *)
val (x1, x2, x3) = (1, true,"Alice");
val pair1 = (x1, x3);
val list1 = [0, x1, 2];
val list2 = [x2, x1];
val list3 = (1 :: [x3]);

(* Part 3 Answer							      *)
(* The first  error is happening because we are trying to create a list	      *)
(* with a mixture of a boolean value and a numeric value. The 2nd error	      *)
(* is similar except this time it is because of a numeric and string	      *)
(* value trying to be combined into a list.				      *)