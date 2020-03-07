structure m1Theory :> m1Theory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading m1Theory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open smTheory
  in end;
  val _ = Theory.link_parents
          ("m1",Arbnum.fromString "1583197497",Arbnum.fromString "915533")
          [("sm",
           Arbnum.fromString "1583197445",
           Arbnum.fromString "988381")];
  val _ = Theory.incorporate_types "m1"
       [("state", 0), ("output", 0), ("command", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("m1", "state"),
   ID("m1", "output"), ID("m1", "command"), ID("min", "bool"),
   ID("list", "list"), ID("bool", "!"), ID("bool", "/\\"), ID("num", "0"),
   ID("prim_rec", "<"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("arithmetic", "BIT1"), ID("arithmetic", "BIT2"), ID("sm", "CFG"),
   ID("sm", "configuration"), ID("bool", "COND"), ID("list", "CONS"),
   ID("bool", "DATATYPE"), ID("m1", "M1ns"), ID("m1", "M1out"),
   ID("arithmetic", "NUMERAL"), ID("m1", "S0"), ID("m1", "S1"),
   ID("m1", "S2"), ID("sm", "TR"), ID("bool", "TYPE_DEFINITION"),
   ID("sm", "Trans"), ID("arithmetic", "ZERO"), ID("bool", "\\/"),
   ID("m1", "command2num"), ID("m1", "command_CASE"),
   ID("m1", "command_size"), ID("m1", "i0"), ID("m1", "i1"),
   ID("m1", "num2command"), ID("m1", "num2output"), ID("m1", "num2state"),
   ID("m1", "o0"), ID("m1", "o1"), ID("m1", "output2num"),
   ID("m1", "output_CASE"), ID("m1", "output_size"), ID("m1", "state2num"),
   ID("m1", "state_CASE"), ID("m1", "state_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 3, 3],
   TYOP [0, 3, 4], TYOP [0, 3, 5], TYOP [0, 1, 6], TYOP [3],
   TYOP [0, 8, 0], TYOP [0, 8, 5], TYOP [0, 0, 1], TYOP [0, 0, 8],
   TYOP [4], TYOP [0, 0, 13], TYOP [0, 13, 0], TYOP [0, 13, 5],
   TYOP [0, 13, 8], TYOP [0, 1, 17], TYOP [0, 13, 1], TYOP [0, 1, 19],
   TYV "'state", TYV "'input", TYOP [0, 22, 21], TYOP [0, 21, 23],
   TYV "'output", TYOP [0, 22, 25], TYOP [0, 21, 26], TYOP [5],
   TYOP [0, 13, 28], TYOP [0, 8, 28], TYOP [0, 1, 28], TYOP [0, 1, 29],
   TYOP [0, 13, 29], TYOP [0, 13, 3], TYOP [0, 8, 3], TYOP [0, 1, 3],
   TYOP [6, 22], TYOP [6, 13], TYOP [6, 25], TYOP [6, 8], TYOP [0, 8, 30],
   TYOP [0, 1, 31], TYOP [0, 1, 42], TYOP [0, 3, 28], TYOP [0, 44, 28],
   TYOP [0, 22, 28], TYOP [0, 46, 28], TYOP [0, 21, 28], TYOP [0, 48, 28],
   TYOP [0, 29, 28], TYOP [0, 50, 28], TYOP [0, 30, 28], TYOP [0, 52, 28],
   TYOP [0, 31, 28], TYOP [0, 54, 28], TYOP [0, 32, 28], TYOP [0, 56, 28],
   TYOP [0, 37, 28], TYOP [0, 58, 28], TYOP [0, 39, 28], TYOP [0, 60, 28],
   TYOP [0, 38, 28], TYOP [0, 62, 28], TYOP [0, 40, 28], TYOP [0, 64, 28],
   TYOP [0, 0, 28], TYOP [0, 66, 28], TYOP [0, 28, 28], TYOP [0, 28, 68],
   TYOP [0, 0, 66], TYOP [0, 3, 44], TYOP [0, 21, 48], TYOP [0, 37, 58],
   TYOP [0, 39, 60], TYOP [0, 38, 62], TYOP [0, 40, 64], TYOP [0, 27, 28],
   TYOP [0, 77, 28], TYOP [0, 24, 28], TYOP [0, 79, 28], TYOP [0, 34, 28],
   TYOP [0, 81, 28], TYOP [0, 15, 28], TYOP [0, 83, 28], TYOP [0, 35, 28],
   TYOP [0, 85, 28], TYOP [0, 9, 28], TYOP [0, 87, 28], TYOP [0, 36, 28],
   TYOP [0, 89, 28], TYOP [0, 2, 28], TYOP [0, 91, 28], TYOP [0, 0, 0],
   TYOP [17, 22, 25, 21], TYOP [0, 39, 94], TYOP [0, 21, 95],
   TYOP [0, 37, 96], TYOP [17, 13, 8, 1], TYOP [0, 40, 98],
   TYOP [0, 1, 99], TYOP [0, 38, 100], TYOP [0, 28, 5], TYOP [0, 37, 37],
   TYOP [0, 22, 103], TYOP [0, 39, 39], TYOP [0, 25, 105],
   TYOP [0, 38, 38], TYOP [0, 13, 107], TYOP [0, 40, 40], TYOP [0, 8, 109],
   TYOP [0, 94, 28], TYOP [0, 94, 111], TYOP [0, 22, 112],
   TYOP [0, 98, 28], TYOP [0, 98, 114], TYOP [0, 13, 115],
   TYOP [0, 66, 83], TYOP [0, 66, 87], TYOP [0, 66, 91], TYOP [0, 13, 42]]
  end
  val _ = Theory.incorporate_consts "m1" tyvector
     [("state_size", 2), ("state_CASE", 7), ("state2num", 2),
      ("output_size", 9), ("output_CASE", 10), ("output2num", 9),
      ("o1", 8), ("o0", 8), ("num2state", 11), ("num2output", 12),
      ("num2command", 14), ("i1", 13), ("i0", 13), ("command_size", 15),
      ("command_CASE", 16), ("command2num", 15), ("S2", 1), ("S1", 1),
      ("S0", 1), ("M1out", 18), ("M1ns", 20)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("M", 13), TMV("M", 8), TMV("M", 1), TMV("M'", 13), TMV("M'", 8),
   TMV("M'", 1), TMV("NS", 24), TMV("Out", 27), TMV("P", 29), TMV("P", 30),
   TMV("P", 31), TMV("P", 32), TMV("a", 13), TMV("a", 8), TMV("a", 1),
   TMV("a'", 13), TMV("a'", 8), TMV("a'", 1), TMV("command", 33),
   TMV("f", 34), TMV("f", 35), TMV("f", 36), TMV("ins", 37),
   TMV("ins", 38), TMV("m", 0), TMV("n", 0), TMV("out1s", 39),
   TMV("out1s", 40), TMV("out2s", 39), TMV("out2s", 40), TMV("output", 41),
   TMV("outs", 40), TMV("r", 0), TMV("r'", 0), TMV("rep", 15),
   TMV("rep", 9), TMV("rep", 2), TMV("s", 1), TMV("s1", 21), TMV("s1", 1),
   TMV("s2", 21), TMV("state", 43), TMV("v", 1), TMV("v0", 3),
   TMV("v0'", 3), TMV("v1", 3), TMV("v1", 13), TMV("v1'", 3), TMV("v2", 3),
   TMV("v2'", 3), TMV("x", 22), TMV("x", 13), TMV("x", 8), TMV("x", 1),
   TMV("x0", 3), TMV("x1", 3), TMV("x1s", 37), TMV("x1s", 38),
   TMV("x2", 3), TMV("x2s", 37), TMV("x2s", 38), TMC(7, 45), TMC(7, 47),
   TMC(7, 49), TMC(7, 50), TMC(7, 51), TMC(7, 53), TMC(7, 55), TMC(7, 57),
   TMC(7, 59), TMC(7, 61), TMC(7, 63), TMC(7, 65), TMC(7, 67), TMC(7, 52),
   TMC(7, 54), TMC(8, 69), TMC(9, 0), TMC(10, 70), TMC(11, 71),
   TMC(11, 72), TMC(11, 69), TMC(11, 33), TMC(11, 73), TMC(11, 74),
   TMC(11, 75), TMC(11, 76), TMC(11, 70), TMC(11, 41), TMC(11, 42),
   TMC(12, 69), TMC(13, 50), TMC(13, 78), TMC(13, 80), TMC(13, 82),
   TMC(13, 84), TMC(13, 86), TMC(13, 88), TMC(13, 90), TMC(13, 92),
   TMC(13, 59), TMC(13, 63), TMC(13, 67), TMC(13, 52), TMC(13, 54),
   TMC(14, 93), TMC(15, 93), TMC(16, 97), TMC(16, 101), TMC(18, 102),
   TMC(19, 104), TMC(19, 106), TMC(19, 108), TMC(19, 110), TMC(20, 68),
   TMC(21, 20), TMC(22, 18), TMC(23, 93), TMC(24, 1), TMC(25, 1),
   TMC(26, 1), TMC(27, 113), TMC(27, 116), TMC(28, 117), TMC(28, 118),
   TMC(28, 119), TMC(29, 120), TMC(30, 0), TMC(31, 69), TMC(32, 15),
   TMC(33, 16), TMC(34, 15), TMC(35, 13), TMC(36, 13), TMC(37, 14),
   TMC(38, 12), TMC(39, 11), TMC(40, 8), TMC(41, 8), TMC(42, 9),
   TMC(43, 10), TMC(44, 9), TMC(45, 2), TMC(46, 7), TMC(47, 2),
   TMC(48, 68)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op command_TY_DEF x = x
    val op command_TY_DEF =
    ThmBind.DT(((("m1",0),[("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%95%34%123%25%78$0@%117%106%127@3|@$0@|@"])
  fun op command_BIJ x = x
    val op command_BIJ =
    ThmBind.DT(((("m1",1),[("bool",[116]),("m1",[0])]),["DISK_THM"]),
               [ThmBind.read"%76%64%12%82%134%129$0@3$0@|@2%73%32%81%25%78$0@%117%106%127@3|$0@2%87%129%134$0@3$0@2|@2"])


  fun op command_size_def x = x
    val op command_size_def =
    ThmBind.DT(((("m1",13),[]),[]),
               [ThmBind.read"%64%51%87%131$0@2%77@|@"])
  fun op command_CASE x = x
    val op command_CASE =
    ThmBind.DT(((("m1",14),[]),[]),
               [ThmBind.read"%64%51%61%43%61%45%79%130$2@$1@$0@2%24%109%87$0@%77@2$2@$1@|%129$2@3|@|@|@"])
  fun op state_TY_DEF x = x
    val op state_TY_DEF =
    ThmBind.DT(((("m1",23),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%99%36%125%25%78$0@%117%105%105%127@4|@$0@|@"])
  fun op state_BIJ x = x
    val op state_BIJ =
    ThmBind.DT(((("m1",24),[("bool",[116]),("m1",[23])]),["DISK_THM"]),
               [ThmBind.read"%76%75%14%89%136%142$0@3$0@|@2%73%32%81%25%78$0@%117%105%105%127@4|$0@2%87%142%136$0@3$0@2|@2"])



  fun op state_size_def x = x
    val op state_size_def =
    ThmBind.DT(((("m1",37),[]),[]),
               [ThmBind.read"%75%53%87%144$0@2%77@|@"])
  fun op state_CASE x = x
    val op state_CASE =
    ThmBind.DT(((("m1",38),[]),[]),
               [ThmBind.read"%75%53%61%43%61%45%61%48%79%143$3@$2@$1@$0@2%24%109%78$0@%117%105%127@4$3@%109%87$0@%117%105%127@4$2@$1@2|%142$3@3|@|@|@|@"])
  fun op output_TY_DEF x = x
    val op output_TY_DEF =
    ThmBind.DT(((("m1",47),
                [("bool",[25]),("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%97%35%124%25%78$0@%117%106%127@3|@$0@|@"])
  fun op output_BIJ x = x
    val op output_BIJ =
    ThmBind.DT(((("m1",48),[("bool",[116]),("m1",[47])]),["DISK_THM"]),
               [ThmBind.read"%76%74%13%88%135%139$0@3$0@|@2%73%32%81%25%78$0@%117%106%127@3|$0@2%87%139%135$0@3$0@2|@2"])


  fun op output_size_def x = x
    val op output_size_def =
    ThmBind.DT(((("m1",60),[]),[]),
               [ThmBind.read"%74%52%87%141$0@2%77@|@"])
  fun op output_CASE x = x
    val op output_CASE =
    ThmBind.DT(((("m1",61),[]),[]),
               [ThmBind.read"%74%52%61%43%61%45%79%140$2@$1@$0@2%24%109%87$0@%77@2$2@$1@|%139$2@3|@|@|@"])
  fun op num2command_command2num x = x
    val op num2command_command2num =
    ThmBind.DT(((("m1",2),[("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%12%82%134%129$0@3$0@|@"])
  fun op command2num_num2command x = x
    val op command2num_num2command =
    ThmBind.DT(((("m1",3),[("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%106%127@4%87%129%134$0@3$0@2|@"])
  fun op num2command_11 x = x
    val op num2command_11 =
    ThmBind.DT(((("m1",4),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%32%73%33%90%78$1@%117%106%127@4%90%78$0@%117%106%127@4%81%82%134$1@2%134$0@3%87$1@$0@4|@|@"])
  fun op command2num_11 x = x
    val op command2num_11 =
    ThmBind.DT(((("m1",5),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%12%64%15%81%87%129$1@2%129$0@3%82$1@$0@2|@|@"])
  fun op num2command_ONTO x = x
    val op num2command_ONTO =
    ThmBind.DT(((("m1",6),[("bool",[25,62]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%64%12%102%32%76%82$1@%134$0@3%78$0@%117%106%127@4|@|@"])
  fun op command2num_ONTO x = x
    val op command2num_ONTO =
    ThmBind.DT(((("m1",7),[("bool",[26]),("m1",[1])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%106%127@4%91%12%87$1@%129$0@2|@2|@"])
  fun op num2command_thm x = x
    val op num2command_thm =
    ThmBind.DT(((("m1",10),[("m1",[8,9])]),[]),
               [ThmBind.read"%76%82%134%77@2%132@2%82%134%117%105%127@4%133@2"])
  fun op command2num_thm x = x
    val op command2num_thm =
    ThmBind.DT(((("m1",11),
                [("bool",[25,53]),("m1",[3,8,9]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%76%87%129%132@2%77@2%87%129%133@2%117%105%127@4"])
  fun op command_EQ_command x = x
    val op command_EQ_command =
    ThmBind.DT(((("m1",12),[("bool",[57]),("m1",[5])]),["DISK_THM"]),
               [ThmBind.read"%64%12%64%15%81%82$1@$0@2%87%129$1@2%129$0@3|@|@"])
  fun op command_case_def x = x
    val op command_case_def =
    ThmBind.DT(((("m1",15),
                [("bool",[55,63]),("m1",[11,14]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%76%61%43%61%45%79%130%132@$1@$0@2$1@|@|@2%61%43%61%45%79%130%133@$1@$0@2$0@|@|@2"])
  fun op datatype_command x = x
    val op datatype_command =
    ThmBind.DT(((("m1",16),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%114%18%132@%133@2"])
  fun op command_distinct x = x
    val op command_distinct =
    ThmBind.DT(((("m1",17),
                [("m1",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%145%82%132@%133@2"])
  fun op command_case_cong x = x
    val op command_case_cong =
    ThmBind.DT(((("m1",18),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9,15]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%64%0%64%3%61%43%61%45%90%76%82$3@$2@2%76%90%82$2@%132@2%79$1@%44@3%90%82$2@%133@2%79$0@%47@5%79%130$3@$1@$0@2%130$2@%44@%47@3|@|@|@|@"])
  fun op command_nchotomy x = x
    val op command_nchotomy =
    ThmBind.DT(((("m1",19),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%64%12%128%82$0@%132@2%82$0@%133@2|@"])
  fun op command_Axiom x = x
    val op command_Axiom =
    ThmBind.DT(((("m1",20),
                [("bool",[8,14,25,55,63]),("m1",[11]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%94%19%76%79$0%132@2$2@2%79$0%133@2$1@2|@|@|@"])
  fun op command_induction x = x
    val op command_induction =
    ThmBind.DT(((("m1",21),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[6,8,9]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%65%8%90%76$0%132@2$0%133@3%64%12$1$0@|@2|@"])
  fun op command_distinct_clauses x = x
    val op command_distinct_clauses =
    ThmBind.DT(((("m1",22),
                [("m1",[11,12]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%145%82%132@%133@2"])
  fun op num2state_state2num x = x
    val op num2state_state2num =
    ThmBind.DT(((("m1",25),[("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%75%14%89%136%142$0@3$0@|@"])
  fun op state2num_num2state x = x
    val op state2num_num2state =
    ThmBind.DT(((("m1",26),[("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%105%105%127@5%87%142%136$0@3$0@2|@"])
  fun op num2state_11 x = x
    val op num2state_11 =
    ThmBind.DT(((("m1",27),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%32%73%33%90%78$1@%117%105%105%127@5%90%78$0@%117%105%105%127@5%81%89%136$1@2%136$0@3%87$1@$0@4|@|@"])
  fun op state2num_11 x = x
    val op state2num_11 =
    ThmBind.DT(((("m1",28),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%75%14%75%17%81%87%142$1@2%142$0@3%89$1@$0@2|@|@"])
  fun op num2state_ONTO x = x
    val op num2state_ONTO =
    ThmBind.DT(((("m1",29),[("bool",[25,62]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%75%14%102%32%76%89$1@%136$0@3%78$0@%117%105%105%127@5|@|@"])
  fun op state2num_ONTO x = x
    val op state2num_ONTO =
    ThmBind.DT(((("m1",30),[("bool",[26]),("m1",[24])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%105%105%127@5%104%14%87$1@%142$0@2|@2|@"])
  fun op num2state_thm x = x
    val op num2state_thm =
    ThmBind.DT(((("m1",34),[("m1",[31,32,33])]),[]),
               [ThmBind.read"%76%89%136%77@2%118@2%76%89%136%117%105%127@4%119@2%89%136%117%106%127@4%120@3"])
  fun op state2num_thm x = x
    val op state2num_thm =
    ThmBind.DT(((("m1",35),
                [("bool",[25]),("m1",[26,31,32,33]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%76%87%142%118@2%77@2%76%87%142%119@2%117%105%127@4%87%142%120@2%117%106%127@5"])
  fun op state_EQ_state x = x
    val op state_EQ_state =
    ThmBind.DT(((("m1",36),[("bool",[57]),("m1",[28])]),["DISK_THM"]),
               [ThmBind.read"%75%14%75%17%81%89$1@$0@2%87%142$1@2%142$0@3|@|@"])
  fun op state_case_def x = x
    val op state_case_def =
    ThmBind.DT(((("m1",39),
                [("bool",[55,63]),("m1",[35,38]),
                 ("numeral",[3,6,7])]),["DISK_THM"]),
               [ThmBind.read"%76%61%43%61%45%61%48%79%143%118@$2@$1@$0@2$2@|@|@|@2%76%61%43%61%45%61%48%79%143%119@$2@$1@$0@2$1@|@|@|@2%61%43%61%45%61%48%79%143%120@$2@$1@$0@2$0@|@|@|@3"])
  fun op datatype_state x = x
    val op datatype_state =
    ThmBind.DT(((("m1",40),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%114%41%118@%119@%120@2"])
  fun op state_distinct x = x
    val op state_distinct =
    ThmBind.DT(((("m1",41),
                [("m1",[35,36]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%76%145%89%118@%119@3%76%145%89%118@%120@3%145%89%119@%120@4"])
  fun op state_case_cong x = x
    val op state_case_cong =
    ThmBind.DT(((("m1",42),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33,39]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%75%2%75%5%61%43%61%45%61%48%90%76%89$4@$3@2%76%90%89$3@%118@2%79$2@%44@3%76%90%89$3@%119@2%79$1@%47@3%90%89$3@%120@2%79$0@%49@6%79%143$4@$2@$1@$0@2%143$3@%44@%47@%49@3|@|@|@|@|@"])
  fun op state_nchotomy x = x
    val op state_nchotomy =
    ThmBind.DT(((("m1",43),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%75%14%128%89$0@%118@2%128%89$0@%119@2%89$0@%120@3|@"])
  fun op state_Axiom x = x
    val op state_Axiom =
    ThmBind.DT(((("m1",44),
                [("bool",[8,14,25,53,55,63]),("m1",[35]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%61%58%98%21%76%79$0%118@2$3@2%76%79$0%119@2$2@2%79$0%120@2$1@3|@|@|@|@"])
  fun op state_induction x = x
    val op state_induction =
    ThmBind.DT(((("m1",45),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%67%10%90%76$0%118@2%76$0%119@2$0%120@4%75%14$1$0@|@2|@"])
  fun op state_distinct_clauses x = x
    val op state_distinct_clauses =
    ThmBind.DT(((("m1",46),
                [("m1",[35,36]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%76%145%89%118@%119@3%76%145%89%118@%120@3%145%89%119@%120@4"])
  fun op num2output_output2num x = x
    val op num2output_output2num =
    ThmBind.DT(((("m1",49),[("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%74%13%88%135%139$0@3$0@|@"])
  fun op output2num_num2output x = x
    val op output2num_num2output =
    ThmBind.DT(((("m1",50),[("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%106%127@4%87%139%135$0@3$0@2|@"])
  fun op num2output_11 x = x
    val op num2output_11 =
    ThmBind.DT(((("m1",51),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%73%32%73%33%90%78$1@%117%106%127@4%90%78$0@%117%106%127@4%81%88%135$1@2%135$0@3%87$1@$0@4|@|@"])
  fun op output2num_11 x = x
    val op output2num_11 =
    ThmBind.DT(((("m1",52),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%74%13%74%16%81%87%139$1@2%139$0@3%88$1@$0@2|@|@"])
  fun op num2output_ONTO x = x
    val op num2output_ONTO =
    ThmBind.DT(((("m1",53),[("bool",[25,62]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%74%13%102%32%76%88$1@%135$0@3%78$0@%117%106%127@4|@|@"])
  fun op output2num_ONTO x = x
    val op output2num_ONTO =
    ThmBind.DT(((("m1",54),[("bool",[26]),("m1",[48])]),["DISK_THM"]),
               [ThmBind.read"%73%32%81%78$0@%117%106%127@4%103%13%87$1@%139$0@2|@2|@"])
  fun op num2output_thm x = x
    val op num2output_thm =
    ThmBind.DT(((("m1",57),[("m1",[55,56])]),[]),
               [ThmBind.read"%76%88%135%77@2%137@2%88%135%117%105%127@4%138@2"])
  fun op output2num_thm x = x
    val op output2num_thm =
    ThmBind.DT(((("m1",58),
                [("bool",[25,53]),("m1",[50,55,56]),
                 ("numeral",[3,7])]),["DISK_THM"]),
               [ThmBind.read"%76%87%139%137@2%77@2%87%139%138@2%117%105%127@4"])
  fun op output_EQ_output x = x
    val op output_EQ_output =
    ThmBind.DT(((("m1",59),[("bool",[57]),("m1",[52])]),["DISK_THM"]),
               [ThmBind.read"%74%13%74%16%81%88$1@$0@2%87%139$1@2%139$0@3|@|@"])
  fun op output_case_def x = x
    val op output_case_def =
    ThmBind.DT(((("m1",62),
                [("bool",[55,63]),("m1",[58,61]),
                 ("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%76%61%43%61%45%79%140%137@$1@$0@2$1@|@|@2%61%43%61%45%79%140%138@$1@$0@2$0@|@|@2"])
  fun op datatype_output x = x
    val op datatype_output =
    ThmBind.DT(((("m1",63),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%114%30%137@%138@2"])
  fun op output_distinct x = x
    val op output_distinct =
    ThmBind.DT(((("m1",64),
                [("m1",[58,59]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%145%88%137@%138@2"])
  fun op output_case_cong x = x
    val op output_case_cong =
    ThmBind.DT(((("m1",65),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56,62]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%74%1%74%4%61%43%61%45%90%76%88$3@$2@2%76%90%88$2@%137@2%79$1@%44@3%90%88$2@%138@2%79$0@%47@5%79%140$3@$1@$0@2%140$2@%44@%47@3|@|@|@|@"])
  fun op output_nchotomy x = x
    val op output_nchotomy =
    ThmBind.DT(((("m1",66),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%74%13%128%88$0@%137@2%88$0@%138@2|@"])
  fun op output_Axiom x = x
    val op output_Axiom =
    ThmBind.DT(((("m1",67),
                [("bool",[8,14,25,55,63]),("m1",[58]),
                 ("numeral",[3,8])]),["DISK_THM"]),
               [ThmBind.read"%61%54%61%55%96%20%76%79$0%137@2$2@2%79$0%138@2$1@2|@|@|@"])
  fun op output_induction x = x
    val op output_induction =
    ThmBind.DT(((("m1",68),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,31,35,42,50,51,53,57,62,63,92,95,100,103,104,
                  106]),("m1",[53,55,56]),("numeral",[3,5,6,7,8,15,16]),
                 ("sat",[1,3,5,6,7,11,12,13,15])]),["DISK_THM"]),
               [ThmBind.read"%66%9%90%76$0%137@2$0%138@3%74%13$1$0@|@2|@"])
  fun op output_distinct_clauses x = x
    val op output_distinct_clauses =
    ThmBind.DT(((("m1",69),
                [("m1",[58,59]),("numeral",[3,6])]),["DISK_THM"]),
               [ThmBind.read"%145%88%137@%138@2"])
  fun op M1ns_ind x = x
    val op M1ns_ind =
    ThmBind.DT(((("m1",72),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106]),("m1",[6,8,9,29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),("pair",[5,16]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%68%11%90%76$0%118@%132@2%76$0%118@%133@2%76$0%119@%132@2%76$0%119@%133@2%76$0%120@%132@2$0%120@%133@7%75%42%64%46$2$1@$0@|@|@2|@"])
  fun op M1ns_def x = x
    val op M1ns_def =
    ThmBind.DT(((("m1",73),
                [("bool",[15,57]),("combin",[19]),("m1",[15,39,70,71]),
                 ("pair",[49]),("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%76%89%115%118@%132@2%119@2%76%89%115%118@%133@2%120@2%76%89%115%119@%132@2%118@2%76%89%115%119@%133@2%118@2%76%89%115%120@%132@2%120@2%89%115%120@%133@2%120@6"])
  fun op M1out_ind x = x
    val op M1out_ind =
    ThmBind.DT(((("m1",76),
                [("arithmetic",
                 [24,25,27,41,46,59,73,95,178,179,183,186,275]),
                 ("bool",
                 [8,14,25,26,31,35,42,46,47,50,51,52,53,57,62,63,92,95,100,
                  103,104,106]),("m1",[6,8,9,29,31,32,33]),
                 ("numeral",[3,5,6,7,8,15,16,17]),("pair",[5,16]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%68%11%90%76$0%118@%132@2%76$0%118@%133@2%76$0%119@%132@2%76$0%119@%133@2%76$0%120@%132@2$0%120@%133@7%75%42%64%46$2$1@$0@|@|@2|@"])
  fun op M1out_def x = x
    val op M1out_def =
    ThmBind.DT(((("m1",77),
                [("bool",[15,57]),("combin",[19]),("m1",[15,39,74,75]),
                 ("pair",[49]),("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%76%88%116%118@%132@2%137@2%76%88%116%118@%133@2%138@2%76%88%116%119@%132@2%137@2%76%88%116%119@%133@2%137@2%76%88%116%120@%132@2%138@2%88%116%120@%133@2%138@6"])
  fun op m1TR_rules x = x
    val op m1TR_rules =
    ThmBind.DT(((("m1",78),[("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%75%37%64%51%71%23%72%31%122$2@%108%112$2@$1@2$3@$0@2%108$1@%115$3@$2@2%113%116$3@$2@2$0@3|@|@|@|@"])
  fun op m1TR_clauses x = x
    val op m1TR_clauses =
    ThmBind.DT(((("m1",79),[("sm",[24])]),["DISK_THM"]),
               [ThmBind.read"%76%62%50%69%56%63%38%70%26%69%59%70%28%63%40%81%121$6@%107$5@$4@$3@2%107$2@$0@$1@3%93%6%92%7%100%22%76%83$8@%110$9@$0@3%76%83$5@$0@2%76%80$3@$2$7@$9@3%84$4@%111$1$7@$9@2$6@5|@|@|@2|@|@|@|@|@|@|@2%64%51%71%57%75%39%72%27%71%60%72%29%81%122$5@%108$4@$3@$2@2%108$1@%115$3@$5@2%113%116$3@$5@2$0@4%101%23%76%85$5@%112$6@$0@3%76%85$2@$0@2%86$1@$3@3|@2|@|@|@|@|@|@2"])
  fun op m1Trans_Equiv_TR x = x
    val op m1Trans_Equiv_TR =
    ThmBind.DT(((("m1",80),[("sm",[29])]),["DISK_THM"]),
               [ThmBind.read"%81%122%51@%108%112%51@%23@2%37@%31@2%108%23@%115%37@%51@2%113%116%37@%51@2%31@4%126%51@%37@%115%37@%51@3"])
  fun op m1_rules x = x
    val op m1_rules =
    ThmBind.DT(((("m1",81),
                [("bool",[15,57]),("combin",[19]),
                 ("m1",[15,39,70,71,74,75]),("pair",[49]),
                 ("relation",[113,132]),("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%76%71%23%72%31%122%132@%108%112%132@$1@2%118@$0@2%108$1@%119@%113%137@$0@3|@|@2%76%71%23%72%31%122%133@%108%112%133@$1@2%118@$0@2%108$1@%120@%113%138@$0@3|@|@2%76%71%23%72%31%122%132@%108%112%132@$1@2%119@$0@2%108$1@%118@%113%137@$0@3|@|@2%76%71%23%72%31%122%133@%108%112%133@$1@2%119@$0@2%108$1@%118@%113%137@$0@3|@|@2%76%71%23%72%31%122%132@%108%112%132@$1@2%120@$0@2%108$1@%120@%113%138@$0@3|@|@2%71%23%72%31%122%133@%108%112%133@$1@2%120@$0@2%108$1@%120@%113%138@$0@3|@|@6"])

  val _ = DB.bindl "m1"
  [("command_TY_DEF",command_TY_DEF,DB.Def),
   ("command_BIJ",command_BIJ,DB.Def),
   ("command_size_def",command_size_def,DB.Def),
   ("command_CASE",command_CASE,DB.Def),
   ("state_TY_DEF",state_TY_DEF,DB.Def), ("state_BIJ",state_BIJ,DB.Def),
   ("state_size_def",state_size_def,DB.Def),
   ("state_CASE",state_CASE,DB.Def),
   ("output_TY_DEF",output_TY_DEF,DB.Def),
   ("output_BIJ",output_BIJ,DB.Def),
   ("output_size_def",output_size_def,DB.Def),
   ("output_CASE",output_CASE,DB.Def),
   ("num2command_command2num",num2command_command2num,DB.Thm),
   ("command2num_num2command",command2num_num2command,DB.Thm),
   ("num2command_11",num2command_11,DB.Thm),
   ("command2num_11",command2num_11,DB.Thm),
   ("num2command_ONTO",num2command_ONTO,DB.Thm),
   ("command2num_ONTO",command2num_ONTO,DB.Thm),
   ("num2command_thm",num2command_thm,DB.Thm),
   ("command2num_thm",command2num_thm,DB.Thm),
   ("command_EQ_command",command_EQ_command,DB.Thm),
   ("command_case_def",command_case_def,DB.Thm),
   ("datatype_command",datatype_command,DB.Thm),
   ("command_distinct",command_distinct,DB.Thm),
   ("command_case_cong",command_case_cong,DB.Thm),
   ("command_nchotomy",command_nchotomy,DB.Thm),
   ("command_Axiom",command_Axiom,DB.Thm),
   ("command_induction",command_induction,DB.Thm),
   ("command_distinct_clauses",command_distinct_clauses,DB.Thm),
   ("num2state_state2num",num2state_state2num,DB.Thm),
   ("state2num_num2state",state2num_num2state,DB.Thm),
   ("num2state_11",num2state_11,DB.Thm),
   ("state2num_11",state2num_11,DB.Thm),
   ("num2state_ONTO",num2state_ONTO,DB.Thm),
   ("state2num_ONTO",state2num_ONTO,DB.Thm),
   ("num2state_thm",num2state_thm,DB.Thm),
   ("state2num_thm",state2num_thm,DB.Thm),
   ("state_EQ_state",state_EQ_state,DB.Thm),
   ("state_case_def",state_case_def,DB.Thm),
   ("datatype_state",datatype_state,DB.Thm),
   ("state_distinct",state_distinct,DB.Thm),
   ("state_case_cong",state_case_cong,DB.Thm),
   ("state_nchotomy",state_nchotomy,DB.Thm),
   ("state_Axiom",state_Axiom,DB.Thm),
   ("state_induction",state_induction,DB.Thm),
   ("state_distinct_clauses",state_distinct_clauses,DB.Thm),
   ("num2output_output2num",num2output_output2num,DB.Thm),
   ("output2num_num2output",output2num_num2output,DB.Thm),
   ("num2output_11",num2output_11,DB.Thm),
   ("output2num_11",output2num_11,DB.Thm),
   ("num2output_ONTO",num2output_ONTO,DB.Thm),
   ("output2num_ONTO",output2num_ONTO,DB.Thm),
   ("num2output_thm",num2output_thm,DB.Thm),
   ("output2num_thm",output2num_thm,DB.Thm),
   ("output_EQ_output",output_EQ_output,DB.Thm),
   ("output_case_def",output_case_def,DB.Thm),
   ("datatype_output",datatype_output,DB.Thm),
   ("output_distinct",output_distinct,DB.Thm),
   ("output_case_cong",output_case_cong,DB.Thm),
   ("output_nchotomy",output_nchotomy,DB.Thm),
   ("output_Axiom",output_Axiom,DB.Thm),
   ("output_induction",output_induction,DB.Thm),
   ("output_distinct_clauses",output_distinct_clauses,DB.Thm),
   ("M1ns_ind",M1ns_ind,DB.Thm), ("M1ns_def",M1ns_def,DB.Thm),
   ("M1out_ind",M1out_ind,DB.Thm), ("M1out_def",M1out_def,DB.Thm),
   ("m1TR_rules",m1TR_rules,DB.Thm), ("m1TR_clauses",m1TR_clauses,DB.Thm),
   ("m1Trans_Equiv_TR",m1Trans_Equiv_TR,DB.Thm),
   ("m1_rules",m1_rules,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "m1",
    thydataty = "compute",
    read = ThmBind.read,
    data = "m1.M1ns_def m1.M1out_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "m1",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY2.m1,7.commandNTY2.m1,5.stateNTY2.m1,6.output"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "m1",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO11.command2num4.%129OO11.num2command4.%134OO2.i04.%132OO2.i14.%133OO12.command_size4.%131OO12.command_CASE4.%130OO4.case4.%130OO9.state2num4.%142OO9.num2state4.%136OO2.S04.%118OO2.S14.%119OO2.S24.%120OO10.state_size4.%144OO10.state_CASE4.%143OO4.case4.%143OO10.output2num4.%139OO10.num2output4.%135OO2.o04.%137OO2.o14.%138OO11.output_size4.%141OO11.output_CASE4.%140OO4.case4.%140OO4.M1ns4.%115OO5.M1out4.%116"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val m1_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="m1"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val m1_grammars = 
    Portable.## (addtyUDs,addtmUDs) m1_grammars
  val _ = Parse.grammarDB_insert("m1",m1_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG command_Axiom,
           case_def=command_case_def,
           case_cong=command_case_cong,
           induction=ORIG command_induction,
           nchotomy=command_nchotomy,
           size=SOME(Parse.Term`(m1$command_size) :m1$command -> num$num`,
                     ORIG command_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME command_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2command_thm command2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG state_Axiom,
           case_def=state_case_def,
           case_cong=state_case_cong,
           induction=ORIG state_induction,
           nchotomy=state_nchotomy,
           size=SOME(Parse.Term`(m1$state_size) :m1$state -> num$num`,
                     ORIG state_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME state_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2state_thm state2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG output_Axiom,
           case_def=output_case_def,
           case_cong=output_case_cong,
           induction=ORIG output_induction,
           nchotomy=output_nchotomy,
           size=SOME(Parse.Term`(m1$output_size) :m1$output -> num$num`,
                     ORIG output_size_def),
           encode = NONE,
           lift=NONE,
           one_one=NONE,
           distinct=SOME output_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = EnumType.update_tyinfo num2output_thm output2num_thm NONE tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "m1"
end
