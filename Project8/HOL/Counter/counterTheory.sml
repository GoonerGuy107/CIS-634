structure counterTheory :> counterTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading counterTheory ... " else ()
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
          ("counter",
          Arbnum.fromString "1583197460",
          Arbnum.fromString "149341")
          [("sm",
           Arbnum.fromString "1583197445",
           Arbnum.fromString "988381")];
  val _ = Theory.incorporate_types "counter"
       [("ctrcmd", 0), ("ctrState", 0), ("ctrOut", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("counter", "ctrcmd"), ID("num", "num"),
   ID("counter", "ctrState"), ID("counter", "ctrOut"), ID("min", "bool"),
   ID("ind_type", "recspace"), ID("list", "list"), ID("bool", "!"),
   ID("arithmetic", "+"), ID("arithmetic", "-"), ID("bool", "/\\"),
   ID("num", "0"), ID("min", "="), ID("min", "==>"), ID("bool", "?"),
   ID("bool", "ARB"), ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("sm", "CFG"), ID("sm", "configuration"), ID("list", "CONS"),
   ID("ind_type", "CONSTR"), ID("counter", "COUNT"),
   ID("bool", "DATATYPE"), ID("counter", "DISPLAY"),
   ID("arithmetic", "NUMERAL"), ID("num", "SUC"), ID("sm", "TR"),
   ID("bool", "TYPE_DEFINITION"), ID("sm", "Trans"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("counter", "count"),
   ID("counter", "ctrNS"), ID("counter", "ctrOut_CASE"),
   ID("counter", "ctrOut_size"), ID("counter", "ctrState_CASE"),
   ID("counter", "ctrState_size"), ID("counter", "ctrcmd_CASE"),
   ID("counter", "ctrcmd_size"), ID("counter", "hold"),
   ID("counter", "load"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYOP [0, 0, 1], TYV "'a",
   TYOP [0, 4, 4], TYOP [0, 4, 5], TYOP [0, 1, 4], TYOP [0, 7, 6],
   TYOP [0, 0, 8], TYOP [3], TYOP [0, 10, 1], TYOP [0, 7, 4],
   TYOP [0, 10, 12], TYOP [4], TYOP [0, 14, 1], TYOP [0, 14, 12],
   TYOP [0, 0, 14], TYOP [0, 10, 17], TYOP [0, 0, 10], TYOP [0, 10, 19],
   TYOP [0, 1, 14], TYOP [0, 1, 10], TYOP [5], TYOP [6, 1],
   TYOP [0, 24, 23], TYV "'state", TYV "'input", TYOP [0, 27, 26],
   TYOP [0, 26, 28], TYV "'output", TYOP [0, 27, 30], TYOP [0, 26, 31],
   TYOP [0, 14, 23], TYOP [0, 10, 23], TYOP [0, 0, 23], TYOP [0, 10, 35],
   TYOP [0, 21, 23], TYOP [0, 22, 23], TYOP [0, 0, 35], TYOP [0, 2, 39],
   TYOP [0, 14, 4], TYOP [0, 10, 4], TYOP [0, 0, 4], TYOP [7, 27],
   TYOP [7, 0], TYOP [7, 30], TYOP [7, 14], TYOP [0, 14, 24],
   TYOP [0, 10, 24], TYOP [0, 0, 24], TYOP [0, 4, 23], TYOP [0, 51, 23],
   TYOP [0, 27, 23], TYOP [0, 53, 23], TYOP [0, 26, 23], TYOP [0, 55, 23],
   TYOP [0, 33, 23], TYOP [0, 34, 23], TYOP [0, 35, 23], TYOP [0, 57, 23],
   TYOP [0, 58, 23], TYOP [0, 36, 23], TYOP [0, 62, 23], TYOP [0, 59, 23],
   TYOP [0, 7, 23], TYOP [0, 65, 23], TYOP [0, 25, 23], TYOP [0, 67, 23],
   TYOP [0, 44, 23], TYOP [0, 69, 23], TYOP [0, 46, 23], TYOP [0, 71, 23],
   TYOP [0, 47, 23], TYOP [0, 73, 23], TYOP [0, 45, 23], TYOP [0, 75, 23],
   TYOP [0, 1, 23], TYOP [0, 77, 23], TYOP [0, 1, 1], TYOP [0, 1, 79],
   TYOP [0, 23, 23], TYOP [0, 23, 81], TYOP [0, 4, 51], TYOP [0, 26, 55],
   TYOP [0, 14, 33], TYOP [0, 10, 34], TYOP [0, 44, 69], TYOP [0, 46, 71],
   TYOP [0, 47, 73], TYOP [0, 45, 75], TYOP [0, 1, 77], TYOP [0, 24, 25],
   TYOP [0, 32, 23], TYOP [0, 93, 23], TYOP [0, 29, 23], TYOP [0, 95, 23],
   TYOP [0, 41, 23], TYOP [0, 97, 23], TYOP [0, 48, 23], TYOP [0, 99, 23],
   TYOP [0, 42, 23], TYOP [0, 101, 23], TYOP [0, 49, 23],
   TYOP [0, 103, 23], TYOP [0, 43, 23], TYOP [0, 105, 23],
   TYOP [0, 50, 23], TYOP [0, 107, 23], TYOP [20, 27, 30, 26],
   TYOP [0, 46, 109], TYOP [0, 26, 110], TYOP [0, 44, 111],
   TYOP [20, 0, 14, 10], TYOP [0, 47, 113], TYOP [0, 10, 114],
   TYOP [0, 45, 115], TYOP [0, 44, 44], TYOP [0, 27, 117],
   TYOP [0, 46, 46], TYOP [0, 30, 119], TYOP [0, 47, 47],
   TYOP [0, 14, 121], TYOP [0, 45, 45], TYOP [0, 0, 123], TYOP [0, 1, 24],
   TYOP [0, 125, 24], TYOP [0, 1, 126], TYOP [0, 1, 127],
   TYOP [0, 109, 23], TYOP [0, 109, 129], TYOP [0, 27, 130],
   TYOP [0, 113, 23], TYOP [0, 113, 132], TYOP [0, 0, 133],
   TYOP [0, 25, 99], TYOP [0, 25, 103], TYOP [0, 25, 107], TYOP [0, 0, 86]]
  end
  val _ = Theory.incorporate_consts "counter" tyvector
     [("load", 2), ("hold", 0), ("ctrcmd_size", 3), ("ctrcmd_CASE", 9),
      ("ctrState_size", 11), ("ctrState_CASE", 13), ("ctrOut_size", 15),
      ("ctrOut_CASE", 16), ("ctrOut", 18), ("ctrNS", 20), ("count", 0),
      ("DISPLAY", 21), ("COUNT", 22)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'ctrOut'", 25), TMV("'ctrState'", 25), TMV("'ctrcmd'", 25),
   TMV("M", 14), TMV("M", 10), TMV("M", 0), TMV("M'", 14), TMV("M'", 10),
   TMV("M'", 0), TMV("NS", 29), TMV("Out", 32), TMV("P", 33), TMV("P", 34),
   TMV("P", 36), TMV("P", 35), TMV("a", 1), TMV("a'", 1), TMV("a0", 24),
   TMV("c", 14), TMV("c", 10), TMV("c", 0), TMV("cc", 14), TMV("cc", 10),
   TMV("cc", 0), TMV("ctrOut", 37), TMV("ctrState", 38), TMV("ctrcmd", 40),
   TMV("f", 7), TMV("f'", 7), TMV("f0", 7), TMV("f1", 4), TMV("f2", 4),
   TMV("fn", 41), TMV("fn", 42), TMV("fn", 43), TMV("ins", 44),
   TMV("ins", 45), TMV("k", 1), TMV("n", 1), TMV("new", 1),
   TMV("out1s", 46), TMV("out1s", 47), TMV("out2s", 46), TMV("out2s", 47),
   TMV("outs", 47), TMV("rep", 48), TMV("rep", 49), TMV("rep", 50),
   TMV("s", 10), TMV("s1", 26), TMV("s1", 10), TMV("s2", 26), TMV("v", 4),
   TMV("v", 10), TMV("v'", 4), TMV("v1", 4), TMV("v1", 0), TMV("v1'", 4),
   TMV("x", 27), TMV("x", 0), TMV("x1s", 44), TMV("x1s", 45),
   TMV("x2s", 44), TMV("x2s", 45), TMC(8, 52), TMC(8, 54), TMC(8, 56),
   TMC(8, 57), TMC(8, 58), TMC(8, 59), TMC(8, 60), TMC(8, 61), TMC(8, 63),
   TMC(8, 64), TMC(8, 66), TMC(8, 68), TMC(8, 70), TMC(8, 72), TMC(8, 74),
   TMC(8, 76), TMC(8, 78), TMC(8, 67), TMC(9, 80), TMC(10, 80),
   TMC(11, 82), TMC(12, 1), TMC(13, 83), TMC(13, 84), TMC(13, 82),
   TMC(13, 85), TMC(13, 86), TMC(13, 39), TMC(13, 87), TMC(13, 88),
   TMC(13, 89), TMC(13, 90), TMC(13, 91), TMC(13, 92), TMC(14, 82),
   TMC(15, 94), TMC(15, 96), TMC(15, 98), TMC(15, 100), TMC(15, 102),
   TMC(15, 104), TMC(15, 106), TMC(15, 108), TMC(15, 70), TMC(15, 76),
   TMC(15, 78), TMC(16, 1), TMC(17, 79), TMC(18, 24), TMC(19, 112),
   TMC(19, 116), TMC(21, 118), TMC(21, 120), TMC(21, 122), TMC(21, 124),
   TMC(22, 128), TMC(23, 22), TMC(24, 81), TMC(25, 21), TMC(26, 79),
   TMC(27, 79), TMC(28, 131), TMC(28, 134), TMC(29, 135), TMC(29, 136),
   TMC(29, 137), TMC(30, 138), TMC(31, 1), TMC(32, 82), TMC(33, 0),
   TMC(34, 20), TMC(4, 18), TMC(35, 16), TMC(36, 15), TMC(37, 13),
   TMC(38, 11), TMC(39, 9), TMC(40, 3), TMC(41, 0), TMC(42, 2),
   TMC(43, 81)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op ctrcmd_TY_DEF x = x
    val op ctrcmd_TY_DEF =
    ThmBind.DT(((("counter",0),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%106%47%129%17%75%2%98%81%17%98%132%109%15%97$1@%15%119%85@$0@%38%112|@|$0@2|@2%132%97$0@%119%124%85@2%110@%38%112|@3%97$0@%119%124%124%85@3%110@%38%112|@5$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op ctrcmd_case_def x = x
    val op ctrcmd_case_def =
    ThmBind.DT(((("counter",8),
                [("bool",[26,180]),("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%84%80%15%74%27%64%52%64%55%86%140%143$3@2$2@$1@$0@2$2$3@2|@|@|@|@2%84%74%27%64%52%64%55%86%140%133@$2@$1@$0@2$1@|@|@|@2%74%27%64%52%64%55%86%140%142@$2@$1@$0@2$0@|@|@|@3"])
  fun op ctrcmd_size_def x = x
    val op ctrcmd_size_def =
    ThmBind.DT(((("counter",9),
                [("bool",[26,180]),("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%84%80%15%96%141%143$0@3%82%123%111%131@3$0@2|@2%84%96%141%133@2%85@2%96%141%142@2%85@3"])
  fun op ctrState_TY_DEF x = x
    val op ctrState_TY_DEF =
    ThmBind.DT(((("counter",18),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%104%46%128%17%75%1%98%81%17%98%109%15%97$1@%15%119%85@$0@%38%112|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op ctrState_case_def x = x
    val op ctrState_case_def =
    ThmBind.DT(((("counter",22),
                [("bool",[26,180]),("counter",[19,20,21]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%74%27%86%138%120$1@2$0@2$0$1@2|@|@"])
  fun op ctrState_size_def x = x
    val op ctrState_size_def =
    ThmBind.DT(((("counter",23),
                [("bool",[26,180]),("counter",[19,20,21]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%96%139%120$0@3%82%123%111%131@3$0@2|@"])
  fun op ctrOut_TY_DEF x = x
    val op ctrOut_TY_DEF =
    ThmBind.DT(((("counter",31),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%102%45%127%17%75%0%98%81%17%98%109%15%97$1@%15%119%85@$0@%38%112|@|$0@2|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op ctrOut_case_def x = x
    val op ctrOut_case_def =
    ThmBind.DT(((("counter",35),
                [("bool",[26,180]),("counter",[32,33,34]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%74%27%86%136%122$1@2$0@2$0$1@2|@|@"])
  fun op ctrOut_size_def x = x
    val op ctrOut_size_def =
    ThmBind.DT(((("counter",36),
                [("bool",[26,180]),("counter",[32,33,34]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%96%137%122$0@3%82%123%111%131@3$0@2|@"])
  fun op datatype_ctrcmd x = x
    val op datatype_ctrcmd =
    ThmBind.DT(((("counter",10),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%121%26%143@%133@%142@2"])
  fun op ctrcmd_11 x = x
    val op ctrcmd_11 =
    ThmBind.DT(((("counter",11),
                [("bool",[26,55,62,180]),("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%80%16%88%91%143$1@2%143$0@3%96$1@$0@2|@|@"])
  fun op ctrcmd_distinct x = x
    val op ctrcmd_distinct =
    ThmBind.DT(((("counter",12),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%84%80%15%144%91%143$0@2%133@2|@2%84%80%15%144%91%143$0@2%142@2|@2%144%91%133@%142@4"])
  fun op ctrcmd_case_cong x = x
    val op ctrcmd_case_cong =
    ThmBind.DT(((("counter",13),
                [("bool",[26,180]),
                 ("counter",[1,2,3,4,5,6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%69%5%69%8%74%27%64%52%64%55%98%84%91$4@$3@2%84%80%15%98%91$4@%143$0@3%86$3$0@2%28$0@3|@2%84%98%91$3@%133@2%86$1@%54@3%98%91$3@%142@2%86$0@%57@6%86%140$4@$2@$1@$0@2%140$3@%28@%54@%57@3|@|@|@|@|@"])
  fun op ctrcmd_nchotomy x = x
    val op ctrcmd_nchotomy =
    ThmBind.DT(((("counter",14),
                [("bool",[26,180]),
                 ("counter",[1,2,3,4,5,6,7])]),["DISK_THM"]),
               [ThmBind.read"%69%23%132%109%38%91$1@%143$0@2|@2%132%91$0@%133@2%91$0@%142@3|@"])
  fun op ctrcmd_Axiom x = x
    val op ctrcmd_Axiom =
    ThmBind.DT(((("counter",15),
                [("bool",[26,180]),("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%74%29%64%30%64%31%105%34%84%80%15%86$1%143$0@3$4$0@2|@2%84%86$0%133@2$2@2%86$0%142@2$1@3|@|@|@|@"])
  fun op ctrcmd_induction x = x
    val op ctrcmd_induction =
    ThmBind.DT(((("counter",16),
                [("bool",[26]),("counter",[1,2,3,4,5,6,7])]),["DISK_THM"]),
               [ThmBind.read"%73%14%98%84%80%38$1%143$0@2|@2%84$0%133@2$0%142@4%69%20$1$0@|@2|@"])
  fun op ctrcmd_distinct_clauses x = x
    val op ctrcmd_distinct_clauses =
    ThmBind.DT(((("counter",17),
                [("bool",[25,26,35,46,50,53,55,62,180]),
                 ("counter",[1,2,3,4,5,6,7]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%84%80%15%144%91%143$0@2%133@2|@2%84%80%15%144%91%143$0@2%142@2|@2%144%91%133@%142@4"])
  fun op datatype_ctrState x = x
    val op datatype_ctrState =
    ThmBind.DT(((("counter",24),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%121%25%120@2"])
  fun op ctrState_11 x = x
    val op ctrState_11 =
    ThmBind.DT(((("counter",25),
                [("bool",[26,55,62,180]),("counter",[19,20,21]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%80%16%88%90%120$1@2%120$0@3%96$1@$0@2|@|@"])
  fun op ctrState_case_cong x = x
    val op ctrState_case_cong =
    ThmBind.DT(((("counter",26),
                [("bool",[26,180]),
                 ("counter",[19,20,21,22])]),["DISK_THM"]),
               [ThmBind.read"%68%4%68%7%74%27%98%84%90$2@$1@2%80%15%98%90$2@%120$0@3%86$1$0@2%28$0@3|@3%86%138$2@$0@2%138$1@%28@3|@|@|@"])
  fun op ctrState_nchotomy x = x
    val op ctrState_nchotomy =
    ThmBind.DT(((("counter",27),
                [("bool",[26,180]),("counter",[19,20,21])]),["DISK_THM"]),
               [ThmBind.read"%68%22%109%38%90$1@%120$0@2|@|@"])
  fun op ctrState_Axiom x = x
    val op ctrState_Axiom =
    ThmBind.DT(((("counter",28),
                [("bool",[26,180]),("counter",[19,20,21]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%74%27%103%33%80%15%86$1%120$0@3$2$0@2|@|@|@"])
  fun op ctrState_induction x = x
    val op ctrState_induction =
    ThmBind.DT(((("counter",29),
                [("bool",[26]),("counter",[19,20,21])]),["DISK_THM"]),
               [ThmBind.read"%71%12%98%80%38$1%120$0@2|@2%68%19$1$0@|@2|@"])
  fun op ctrState_one_one x = x
    val op ctrState_one_one =
    ThmBind.DT(((("counter",30),
                [("bool",[26,55,62,180]),("counter",[19,20,21]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%80%16%88%90%120$1@2%120$0@3%96$1@$0@2|@|@"])
  fun op datatype_ctrOut x = x
    val op datatype_ctrOut =
    ThmBind.DT(((("counter",37),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%121%24%122@2"])
  fun op ctrOut_11 x = x
    val op ctrOut_11 =
    ThmBind.DT(((("counter",38),
                [("bool",[26,55,62,180]),("counter",[32,33,34]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%80%16%88%89%122$1@2%122$0@3%96$1@$0@2|@|@"])
  fun op ctrOut_case_cong x = x
    val op ctrOut_case_cong =
    ThmBind.DT(((("counter",39),
                [("bool",[26,180]),
                 ("counter",[32,33,34,35])]),["DISK_THM"]),
               [ThmBind.read"%67%3%67%6%74%27%98%84%89$2@$1@2%80%15%98%89$2@%122$0@3%86$1$0@2%28$0@3|@3%86%136$2@$0@2%136$1@%28@3|@|@|@"])
  fun op ctrOut_nchotomy x = x
    val op ctrOut_nchotomy =
    ThmBind.DT(((("counter",40),
                [("bool",[26,180]),("counter",[32,33,34])]),["DISK_THM"]),
               [ThmBind.read"%67%21%109%38%89$1@%122$0@2|@|@"])
  fun op ctrOut_Axiom x = x
    val op ctrOut_Axiom =
    ThmBind.DT(((("counter",41),
                [("bool",[26,180]),("counter",[32,33,34]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%74%27%101%32%80%15%86$1%122$0@3$2$0@2|@|@|@"])
  fun op ctrOut_induction x = x
    val op ctrOut_induction =
    ThmBind.DT(((("counter",42),
                [("bool",[26]),("counter",[32,33,34])]),["DISK_THM"]),
               [ThmBind.read"%70%11%98%80%38$1%122$0@2|@2%67%18$1$0@|@2|@"])
  fun op ctrOut_one_one x = x
    val op ctrOut_one_one =
    ThmBind.DT(((("counter",43),
                [("bool",[26,55,62,180]),("counter",[32,33,34]),
                 ("ind_type",[33,34])]),["DISK_THM"]),
               [ThmBind.read"%80%15%80%16%88%89%122$1@2%122$0@3%96$1@$0@2|@|@"])
  fun op ctrNS_ind x = x
    val op ctrNS_ind =
    ThmBind.DT(((("counter",46),
                [("bool",[25,26,27,52,53,62,180]),
                 ("counter",[1,2,3,4,5,6,7,19,20,21]),("pair",[5,16]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
               [ThmBind.read"%72%13%98%84%80%38%80%37$2%120$1@2%143$0@2|@|@2%84%80%38$1%120$0@2%133@|@2%80%38$1%120$0@2%142@|@4%68%53%69%56$2$1@$0@|@|@2|@"])
  fun op ctrNS_def x = x
    val op ctrNS_def =
    ThmBind.DT(((("counter",47),
                [("bool",[15,57]),("combin",[19]),("counter",[8,22,44,45]),
                 ("pair",[49]),("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%84%90%134%120%38@2%143%37@3%120%37@3%84%90%134%120%38@2%133@2%120%83%38@%123%111%131@6%90%134%120%38@2%142@2%120%38@4"])
  fun op ctrOut_ind x = x
    val op ctrOut_ind =
    ThmBind.DT(((("counter",50),
                [("bool",[25,26,27,52,53,62,180]),
                 ("counter",[1,2,3,4,5,6,7,19,20,21]),("pair",[5,16]),
                 ("relation",[107,113]),
                 ("sat",[1,3,5,6,7,11,15])]),["DISK_THM"]),
               [ThmBind.read"%72%13%98%84%80%38%80%37$2%120$1@2%143$0@2|@|@2%84%80%38$1%120$0@2%133@|@2%80%38$1%120$0@2%142@|@4%68%53%69%56$2$1@$0@|@|@2|@"])
  fun op ctrOut_def x = x
    val op ctrOut_def =
    ThmBind.DT(((("counter",51),
                [("bool",[15,57]),("combin",[19]),("counter",[8,22,48,49]),
                 ("pair",[49]),("relation",[113,132])]),["DISK_THM"]),
               [ThmBind.read"%84%89%135%120%38@2%143%37@3%122%37@3%84%89%135%120%38@2%133@2%122%83%38@%123%111%131@6%89%135%120%38@2%142@2%122%38@4"])
  fun op ctrTR_rules x = x
    val op ctrTR_rules =
    ThmBind.DT(((("counter",52),[("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%68%48%69%59%79%36%78%44%126$2@%114%118$2@$1@2$3@$0@2%114$1@%134$3@$2@2%117%135$3@$2@2$0@3|@|@|@|@"])
  fun op ctrTR_clauses x = x
    val op ctrTR_clauses =
    ThmBind.DT(((("counter",53),[("sm",[24])]),["DISK_THM"]),
               [ThmBind.read"%84%65%58%76%60%66%49%77%40%76%62%77%42%66%51%88%125$6@%113$5@$4@$3@2%113$2@$0@$1@3%100%9%99%10%107%35%84%92$8@%115$9@$0@3%84%92$5@$0@2%84%87$3@$2$7@$9@3%93$4@%116$1$7@$9@2$6@5|@|@|@2|@|@|@|@|@|@|@2%69%59%79%61%68%50%78%41%79%63%78%43%88%126$5@%114$4@$3@$2@2%114$1@%134$3@$5@2%117%135$3@$5@2$0@4%108%36%84%95$5@%118$6@$0@3%84%95$2@$0@2%94$1@$3@3|@2|@|@|@|@|@|@2"])
  fun op ctrTrans_Equiv_TR x = x
    val op ctrTrans_Equiv_TR =
    ThmBind.DT(((("counter",54),[("sm",[29])]),["DISK_THM"]),
               [ThmBind.read"%88%126%59@%114%118%59@%36@2%48@%44@2%114%36@%134%48@%59@2%117%135%48@%59@2%44@4%130%59@%48@%134%48@%59@3"])
  fun op ctr_rules x = x
    val op ctr_rules =
    ThmBind.DT(((("counter",55),
                [("bool",[15,57]),("combin",[19]),
                 ("counter",[8,22,44,45,48,49]),("pair",[49]),
                 ("relation",[113,132]),("sm",[20])]),["DISK_THM"]),
               [ThmBind.read"%84%79%36%78%44%126%143%39@2%114%118%143%39@2$1@2%120%38@2$0@2%114$1@%120%39@2%117%122%39@2$0@3|@|@2%84%79%36%78%44%126%133@%114%118%133@$1@2%120%38@2$0@2%114$1@%120%83%38@%123%111%131@5%117%122%83%38@%123%111%131@5$0@3|@|@2%79%36%78%44%126%142@%114%118%142@$1@2%120%38@2$0@2%114$1@%120%38@2%117%122%38@2$0@3|@|@3"])

  val _ = DB.bindl "counter"
  [("ctrcmd_TY_DEF",ctrcmd_TY_DEF,DB.Def),
   ("ctrcmd_case_def",ctrcmd_case_def,DB.Def),
   ("ctrcmd_size_def",ctrcmd_size_def,DB.Def),
   ("ctrState_TY_DEF",ctrState_TY_DEF,DB.Def),
   ("ctrState_case_def",ctrState_case_def,DB.Def),
   ("ctrState_size_def",ctrState_size_def,DB.Def),
   ("ctrOut_TY_DEF",ctrOut_TY_DEF,DB.Def),
   ("ctrOut_case_def",ctrOut_case_def,DB.Def),
   ("ctrOut_size_def",ctrOut_size_def,DB.Def),
   ("datatype_ctrcmd",datatype_ctrcmd,DB.Thm),
   ("ctrcmd_11",ctrcmd_11,DB.Thm),
   ("ctrcmd_distinct",ctrcmd_distinct,DB.Thm),
   ("ctrcmd_case_cong",ctrcmd_case_cong,DB.Thm),
   ("ctrcmd_nchotomy",ctrcmd_nchotomy,DB.Thm),
   ("ctrcmd_Axiom",ctrcmd_Axiom,DB.Thm),
   ("ctrcmd_induction",ctrcmd_induction,DB.Thm),
   ("ctrcmd_distinct_clauses",ctrcmd_distinct_clauses,DB.Thm),
   ("datatype_ctrState",datatype_ctrState,DB.Thm),
   ("ctrState_11",ctrState_11,DB.Thm),
   ("ctrState_case_cong",ctrState_case_cong,DB.Thm),
   ("ctrState_nchotomy",ctrState_nchotomy,DB.Thm),
   ("ctrState_Axiom",ctrState_Axiom,DB.Thm),
   ("ctrState_induction",ctrState_induction,DB.Thm),
   ("ctrState_one_one",ctrState_one_one,DB.Thm),
   ("datatype_ctrOut",datatype_ctrOut,DB.Thm),
   ("ctrOut_11",ctrOut_11,DB.Thm),
   ("ctrOut_case_cong",ctrOut_case_cong,DB.Thm),
   ("ctrOut_nchotomy",ctrOut_nchotomy,DB.Thm),
   ("ctrOut_Axiom",ctrOut_Axiom,DB.Thm),
   ("ctrOut_induction",ctrOut_induction,DB.Thm),
   ("ctrOut_one_one",ctrOut_one_one,DB.Thm),
   ("ctrNS_ind",ctrNS_ind,DB.Thm), ("ctrNS_def",ctrNS_def,DB.Thm),
   ("ctrOut_ind",ctrOut_ind,DB.Thm), ("ctrOut_def",ctrOut_def,DB.Thm),
   ("ctrTR_rules",ctrTR_rules,DB.Thm),
   ("ctrTR_clauses",ctrTR_clauses,DB.Thm),
   ("ctrTrans_Equiv_TR",ctrTrans_Equiv_TR,DB.Thm),
   ("ctr_rules",ctr_rules,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "counter",
    thydataty = "compute",
    read = ThmBind.read,
    data = "counter.ctrNS_def counter.ctrOut_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "counter",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data =
        "NTY7.counter,6.ctrcmdNTY7.counter,8.ctrStateNTY7.counter,6.ctrOut"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "counter",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO4.load4.%143OO5.count4.%133OO4.hold4.%142OO11.ctrcmd_CASE4.%140OO11.ctrcmd_size4.%141OO4.case4.%140OO5.COUNT4.%120OO13.ctrState_CASE4.%138OO13.ctrState_size4.%139OO4.case4.%138OO7.DISPLAY4.%122OO11.ctrOut_CASE4.%136OO11.ctrOut_size4.%137OO4.case4.%136OO5.ctrNS4.%134OO6.ctrOut4.%135"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val counter_grammars = merge_grammars ["sm"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="counter"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val counter_grammars = 
    Portable.## (addtyUDs,addtmUDs) counter_grammars
  val _ = Parse.grammarDB_insert("counter",counter_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG ctrcmd_Axiom,
           case_def=ctrcmd_case_def,
           case_cong=ctrcmd_case_cong,
           induction=ORIG ctrcmd_induction,
           nchotomy=ctrcmd_nchotomy,
           size=SOME(Parse.Term`(counter$ctrcmd_size) :counter$ctrcmd -> num$num`,
                     ORIG ctrcmd_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME ctrcmd_11,
           distinct=SOME ctrcmd_distinct,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
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
          {ax=ORIG ctrState_Axiom,
           case_def=ctrState_case_def,
           case_cong=ctrState_case_cong,
           induction=ORIG ctrState_induction,
           nchotomy=ctrState_nchotomy,
           size=SOME(Parse.Term`(counter$ctrState_size) :counter$ctrState -> num$num`,
                     ORIG ctrState_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME ctrState_11,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
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
          {ax=ORIG ctrOut_Axiom,
           case_def=ctrOut_case_def,
           case_cong=ctrOut_case_cong,
           induction=ORIG ctrOut_induction,
           nchotomy=ctrOut_nchotomy,
           size=SOME(Parse.Term`(counter$ctrOut_size) :counter$ctrOut -> num$num`,
                     ORIG ctrOut_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME ctrOut_11,
           distinct=NONE,
           fields=let fun T t s A = mk_thy_type{Thy=t,Tyop=s,Args=A}
    val U = mk_vartype
in
[] end,
           accessors=[],
           updates=[],
           recognizers=[],
           destructors=[]}
        val tyinfo0 = tyinfo0
        val () = computeLib.write_datatype_info tyinfo0
      in
        tyinfo0
      end
    ];

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "counter"
end
