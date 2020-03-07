structure smTheory :> smTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading smTheory ... " else ()
  open Type Term Thm
  infixr -->

  fun C s t ty = mk_thy_const{Name=s,Thy=t,Ty=ty}
  fun T s t A = mk_thy_type{Tyop=s, Thy=t,Args=A}
  fun V s q = mk_var(s,q)
  val U     = mk_vartype
  (* Parents and ML dependencies *)
  local open indexedListsTheory patternMatchesTheory
  in end;
  val _ = Theory.link_parents
          ("sm",Arbnum.fromString "1583197445",Arbnum.fromString "988381")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "sm" [("configuration", 3)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("sm", "configuration"),
   ID("list", "list"), ID("min", "bool"), ID("ind_type", "recspace"),
   ID("pair", "prod"), ID("bool", "!"), ID("arithmetic", "+"),
   ID("pair", ","), ID("bool", "/\\"), ID("num", "0"), ID("min", "="),
   ID("min", "==>"), ID("bool", "?"), ID("arithmetic", "BIT1"),
   ID("ind_type", "BOTTOM"), ID("sm", "CFG"), ID("list", "CONS"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("arithmetic", "NUMERAL"), ID("sm", "TR"),
   ID("bool", "TYPE_DEFINITION"), ID("sm", "Trans"),
   ID("arithmetic", "ZERO"), ID("sm", "configuration_CASE"),
   ID("sm", "configuration_size"), ID("list", "list_size")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYV "'state", TYV "'output", TYV "'input", TYOP [2, 3, 2, 1],
   TYOP [0, 4, 0], TYOP [0, 1, 0], TYOP [0, 6, 5], TYOP [0, 2, 0],
   TYOP [0, 8, 7], TYOP [0, 3, 0], TYOP [0, 10, 9], TYV "'a", TYOP [3, 2],
   TYOP [0, 13, 12], TYOP [0, 1, 14], TYOP [3, 3], TYOP [0, 16, 15],
   TYOP [0, 17, 12], TYOP [0, 4, 18], TYOP [4], TYOP [0, 1, 20],
   TYOP [0, 1, 21], TYOP [0, 3, 22], TYOP [2, 3, 2, 12], TYOP [0, 24, 20],
   TYOP [0, 4, 25], TYOP [0, 3, 26], TYOP [0, 13, 4], TYOP [0, 1, 28],
   TYOP [0, 16, 29], TYOP [6, 1, 13], TYOP [6, 16, 31], TYOP [5, 32],
   TYOP [0, 33, 20], TYOP [0, 3, 12], TYOP [0, 1, 35], TYOP [0, 3, 1],
   TYOP [0, 1, 37], TYOP [0, 3, 2], TYOP [0, 1, 39], TYOP [0, 4, 20],
   TYOP [0, 30, 20], TYOP [0, 4, 12], TYOP [0, 4, 33], TYOP [0, 3, 20],
   TYOP [0, 45, 20], TYOP [0, 21, 20], TYOP [0, 25, 20], TYOP [0, 41, 20],
   TYOP [0, 23, 20], TYOP [0, 50, 20], TYOP [0, 27, 20], TYOP [0, 52, 20],
   TYOP [0, 10, 20], TYOP [0, 54, 20], TYOP [0, 8, 20], TYOP [0, 56, 20],
   TYOP [0, 36, 20], TYOP [0, 58, 20], TYOP [0, 40, 20], TYOP [0, 60, 20],
   TYOP [0, 38, 20], TYOP [0, 62, 20], TYOP [0, 6, 20], TYOP [0, 64, 20],
   TYOP [0, 49, 20], TYOP [0, 17, 20], TYOP [0, 67, 20], TYOP [0, 34, 20],
   TYOP [0, 69, 20], TYOP [0, 16, 20], TYOP [0, 71, 20], TYOP [0, 13, 20],
   TYOP [0, 73, 20], TYOP [0, 0, 0], TYOP [0, 0, 75], TYOP [0, 13, 31],
   TYOP [0, 1, 77], TYOP [0, 31, 32], TYOP [0, 16, 79], TYOP [0, 20, 20],
   TYOP [0, 20, 81], TYOP [0, 12, 20], TYOP [0, 12, 83], TYOP [0, 24, 25],
   TYOP [0, 4, 41], TYOP [0, 23, 50], TYOP [0, 27, 52], TYOP [0, 16, 71],
   TYOP [0, 13, 73], TYOP [0, 0, 20], TYOP [0, 0, 91], TYOP [0, 33, 34],
   TYOP [0, 2, 20], TYOP [0, 94, 20], TYOP [0, 43, 20], TYOP [0, 96, 20],
   TYOP [0, 44, 20], TYOP [0, 98, 20], TYOP [0, 13, 24], TYOP [0, 12, 100],
   TYOP [0, 16, 101], TYOP [0, 16, 16], TYOP [0, 3, 103], TYOP [0, 13, 13],
   TYOP [0, 2, 105], TYOP [0, 0, 33], TYOP [0, 107, 33], TYOP [0, 32, 108],
   TYOP [0, 0, 109], TYOP [0, 3, 86], TYOP [0, 34, 98], TYOP [0, 16, 0],
   TYOP [0, 10, 113], TYOP [0, 13, 0], TYOP [0, 8, 115]]
  end
  val _ = Theory.incorporate_consts "sm" tyvector
     [("configuration_size", 11), ("configuration_CASE", 19),
      ("Trans", 23), ("TR", 27), ("CFG", 30)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'configuration'", 34), TMV("M", 4), TMV("M'", 4), TMV("NS", 36),
   TMV("NS", 38), TMV("Out", 40), TMV("P", 41), TMV("TR'", 27),
   TMV("Trans'", 23), TMV("a0", 3), TMV("a0", 16), TMV("a0'", 16),
   TMV("a0'", 33), TMV("a1", 1), TMV("a1", 4), TMV("a1'", 1), TMV("a2", 1),
   TMV("a2", 24), TMV("a2", 13), TMV("a2'", 13), TMV("c", 4), TMV("cc", 4),
   TMV("configuration", 42), TMV("f", 10), TMV("f", 17), TMV("f'", 17),
   TMV("f1", 8), TMV("f2", 6), TMV("fn", 43), TMV("ins", 16),
   TMV("ins1", 16), TMV("ins2", 16), TMV("ins2'", 16), TMV("l", 16),
   TMV("l0", 13), TMV("n", 0), TMV("out", 2), TMV("out1s", 13),
   TMV("out2s", 13), TMV("outs", 13), TMV("outs1", 13), TMV("outs2", 13),
   TMV("outs2'", 13), TMV("rep", 44), TMV("s", 1), TMV("s'", 1),
   TMV("s1", 1), TMV("s2", 1), TMV("x", 3), TMV("x1", 3), TMV("x1s", 16),
   TMV("x2s", 16), TMC(7, 46), TMC(7, 47), TMC(7, 48), TMC(7, 49),
   TMC(7, 51), TMC(7, 53), TMC(7, 55), TMC(7, 57), TMC(7, 59), TMC(7, 61),
   TMC(7, 63), TMC(7, 65), TMC(7, 66), TMC(7, 68), TMC(7, 70), TMC(7, 72),
   TMC(7, 74), TMC(7, 69), TMC(8, 76), TMC(9, 78), TMC(9, 80), TMC(10, 82),
   TMC(11, 0), TMC(12, 84), TMC(12, 22), TMC(12, 82), TMC(12, 85),
   TMC(12, 86), TMC(12, 87), TMC(12, 88), TMC(12, 89), TMC(12, 90),
   TMC(12, 92), TMC(12, 93), TMC(13, 82), TMC(14, 95), TMC(14, 47),
   TMC(14, 59), TMC(14, 61), TMC(14, 63), TMC(14, 97), TMC(14, 99),
   TMC(14, 72), TMC(14, 74), TMC(15, 75), TMC(16, 33), TMC(17, 102),
   TMC(17, 30), TMC(18, 104), TMC(18, 106), TMC(19, 110), TMC(20, 81),
   TMC(21, 75), TMC(22, 27), TMC(22, 111), TMC(23, 112), TMC(24, 23),
   TMC(25, 0), TMC(26, 19), TMC(27, 11), TMC(28, 114), TMC(28, 116)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op Trans_def x = x
    val op Trans_def =
    ThmBind.DT(((("sm",0),[]),[]),
               [ThmBind.read"%80%108@%9%13%16%56%8%86%52%9%53%13%53%16%86%91%4%76$1@$0$2@$3@2|@2$3$2@$1@$0@2|@|@|@2$0$3@$2@$1@2|@|||@"])
  fun op configuration_TY_DEF x = x
    val op configuration_TY_DEF =
    ThmBind.DT(((("sm",5),[("bool",[26])]),["DISK_THM"]),
               [ThmBind.read"%93%43%107%12%66%0%86%69%12%86%94%10%88%13%95%18%85$3@%10%13%18%102%74@%72$2@%71$1@$0@3%35%97|@|||$2@$1@$0@2|@|@|@2$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op configuration_case_def x = x
    val op configuration_case_def =
    ThmBind.DT(((("sm",9),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%67%10%53%13%68%18%65%24%75%110%99$3@$2@$1@2$0@2$0$3@$2@$1@2|@|@|@|@"])
  fun op configuration_size_def x = x
    val op configuration_size_def =
    ThmBind.DT(((("sm",10),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%58%23%59%26%63%27%67%10%53%13%68%18%84%111$5@$4@$3@%99$2@$1@$0@3%70%104%96%109@3%70%112$5@$2@2%70$3$1@2%113$4@$0@5|@|@|@|@|@|@"])
  fun op TR_def x = x
    val op TR_def =
    ThmBind.DT(((("sm",19),[]),[]),
               [ThmBind.read"%81%105@%9%14%17%57%7%86%52%9%55%14%54%17%86%89%3%90%5%88%44%94%29%95%39%73%79$6@%99%100$7@$1@2$2@$0@3%78$5@%98$1@$4$2@$7@2%101$3$2@$7@2$0@4|@|@|@|@|@2$3$2@$1@$0@2|@|@|@2$0$3@$2@$1@2|@|||@"])
  fun op configuration_induction x = x
    val op configuration_induction =
    ThmBind.DT(((("sm",16),[("bool",[26]),("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%64%6%86%67%33%53%44%68%34$3%99$2@$1@$0@2|@|@|@2%55%20$1$0@|@2|@"])
  fun op configuration_Axiom x = x
    val op configuration_Axiom =
    ThmBind.DT(((("sm",15),
                [("bool",[26,180]),("ind_type",[33,34]),("pair",[8,9]),
                 ("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%65%24%92%28%67%10%53%13%68%18%75$3%99$2@$1@$0@3$4$2@$1@$0@2|@|@|@|@|@"])
  fun op configuration_nchotomy x = x
    val op configuration_nchotomy =
    ThmBind.DT(((("sm",14),
                [("bool",[26,180]),("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%55%21%94%33%88%44%95%34%79$3@%99$2@$1@$0@2|@|@|@|@"])
  fun op configuration_case_cong x = x
    val op configuration_case_cong =
    ThmBind.DT(((("sm",13),
                [("bool",[26,180]),("sm",[6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%55%1%55%2%65%24%86%73%79$2@$1@2%67%10%53%13%68%18%86%79$4@%99$2@$1@$0@3%75$3$2@$1@$0@2%25$2@$1@$0@3|@|@|@3%75%110$2@$0@2%110$1@%25@3|@|@|@"])
  fun op Trans_rules x = x
    val op Trans_rules =
    ThmBind.DT(((("sm",1),[("bool",[26]),("sm",[0])]),["DISK_THM"]),
               [ThmBind.read"%62%4%53%44%52%48%108$0@$1@$2$1@$0@2|@|@|@"])
  fun op Trans_ind x = x
    val op Trans_ind =
    ThmBind.DT(((("sm",2),[("bool",[26]),("sm",[0])]),["DISK_THM"]),
               [ThmBind.read"%56%8%86%62%4%53%44%52%48$3$0@$1@$2$1@$0@2|@|@|@2%52%9%53%13%53%16%86%108$2@$1@$0@2$3$2@$1@$0@2|@|@|@2|@"])
  fun op Trans_strongind x = x
    val op Trans_strongind =
    ThmBind.DT(((("sm",3),[("bool",[26]),("sm",[0])]),["DISK_THM"]),
               [ThmBind.read"%56%8%86%62%4%53%44%52%48$3$0@$1@$2$1@$0@2|@|@|@2%52%9%53%13%53%16%86%108$2@$1@$0@2$3$2@$1@$0@2|@|@|@2|@"])
  fun op Trans_cases x = x
    val op Trans_cases =
    ThmBind.DT(((("sm",4),[("bool",[26]),("sm",[0])]),["DISK_THM"]),
               [ThmBind.read"%52%9%53%13%53%16%77%108$2@$1@$0@2%91%4%76$1@$0$2@$3@2|@2|@|@|@"])
  fun op datatype_configuration x = x
    val op datatype_configuration =
    ThmBind.DT(((("sm",11),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%103%22%99@2"])
  fun op configuration_11 x = x
    val op configuration_11 =
    ThmBind.DT(((("sm",17),
                [("bool",[26,50,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%67%10%53%13%68%18%67%11%53%15%68%19%77%79%99$5@$4@$3@2%99$2@$1@$0@3%73%82$5@$2@2%73%76$4@$1@2%83$3@$0@4|@|@|@|@|@|@"])
  fun op configuration_one_one x = x
    val op configuration_one_one =
    ThmBind.DT(((("sm",18),
                [("bool",[26,50,55,62,180]),("ind_type",[33,34]),
                 ("pair",[8,9]),("sm",[6,7,8])]),["DISK_THM"]),
               [ThmBind.read"%67%10%53%13%68%18%67%11%53%15%68%19%77%79%99$5@$4@$3@2%99$2@$1@$0@3%73%82$5@$2@2%73%76$4@$1@2%83$3@$0@4|@|@|@|@|@|@"])
  fun op TR_rules x = x
    val op TR_rules =
    ThmBind.DT(((("sm",20),[("bool",[26]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%60%3%61%5%53%44%52%48%67%29%68%39%105$2@%99%100$2@$1@2$3@$0@2%98$1@$5$3@$2@2%101$4$3@$2@2$0@3|@|@|@|@|@|@"])
  fun op TR_ind x = x
    val op TR_ind =
    ThmBind.DT(((("sm",21),[("bool",[26]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%57%7%86%60%3%61%5%53%44%52%48%67%29%68%39$6$2@%99%100$2@$1@2$3@$0@2%98$1@$5$3@$2@2%101$4$3@$2@2$0@3|@|@|@|@|@|@2%52%9%55%14%54%17%86%105$2@$1@$0@2$3$2@$1@$0@2|@|@|@2|@"])
  fun op TR_strongind x = x
    val op TR_strongind =
    ThmBind.DT(((("sm",22),[("bool",[26]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%57%7%86%60%3%61%5%53%44%52%48%67%29%68%39$6$2@%99%100$2@$1@2$3@$0@2%98$1@$5$3@$2@2%101$4$3@$2@2$0@3|@|@|@|@|@|@2%52%9%55%14%54%17%86%105$2@$1@$0@2$3$2@$1@$0@2|@|@|@2|@"])
  fun op TR_cases x = x
    val op TR_cases =
    ThmBind.DT(((("sm",23),[("bool",[26]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%52%9%55%14%54%17%77%105$2@$1@$0@2%89%3%90%5%88%44%94%29%95%39%73%79$6@%99%100$7@$1@2$2@$0@3%78$5@%98$1@$4$2@$7@2%101$3$2@$7@2$0@4|@|@|@|@|@2|@|@|@"])
  fun op TR_clauses x = x
    val op TR_clauses =
    ThmBind.DT(((("sm",24),
                [("bool",[13,25,26,27,29,46,47,50,51,52,53,55,62,93,180]),
                 ("ind_type",[33,34]),("list",[9]),("pair",[8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("sm",[6,7,8,19])]),["DISK_THM"]),
               [ThmBind.read"%73%52%48%67%50%53%46%68%37%67%51%68%38%53%47%77%106$6@%99$5@$4@$3@2%99$2@$0@$1@3%91%4%90%5%94%29%73%82$8@%100$9@$0@3%73%82$5@$0@2%73%76$3@$2$7@$9@3%83$4@%101$1$7@$9@2$6@5|@|@|@2|@|@|@|@|@|@|@2%62%4%61%5%52%48%67%50%53%46%68%37%67%51%68%38%77%106$5@%99$4@$3@$2@2%99$1@$7$3@$5@2%101$6$3@$5@2$0@4%94%29%73%82$5@%100$6@$0@3%73%82$2@$0@2%83$1@$3@3|@2|@|@|@|@|@|@|@|@2"])
  fun op TR_deterministic x = x
    val op TR_deterministic =
    ThmBind.DT(((("sm",25),
                [("bool",
                 [13,25,26,27,29,35,46,47,50,51,52,53,55,57,62,70,92,93,95,
                  180]),("combin",[19]),("ind_type",[33,34]),("list",[9]),
                 ("pair",[8,9]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15,17,18,19,20,23]),
                 ("sm",[6,7,8,19])]),["DISK_THM"]),
               [ThmBind.read"%62%4%61%5%52%49%67%30%53%46%68%40%67%31%67%32%68%41%68%42%77%73%106$7@%99%100$7@$6@2$5@$4@2%99$3@$9$5@$7@2%101$8$5@$7@2$1@4%106$7@%99%100$7@$6@2$5@$4@2%99$2@$9$5@$7@2%101$8$5@$7@2$0@5%73%79%99$3@$9$5@$7@2%101$8$5@$7@2$1@3%99$2@$9$5@$7@2%101$8$5@$7@2$0@4%106$7@%99%100$7@$6@2$5@$4@2%99$3@$9$5@$7@2%101$8$5@$7@2$1@5|@|@|@|@|@|@|@|@|@|@"])
  fun op TR_complete x = x
    val op TR_complete =
    ThmBind.DT(((("sm",26),
                [("bool",[25,26,50,55]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%53%44%52%48%67%29%68%39%88%45%87%36%106$4@%99%100$4@$3@2$5@$2@2%99$3@$1@%101$0@$2@3|@|@|@|@|@|@"])
  fun op Trans_TR_lemma x = x
    val op Trans_TR_lemma =
    ThmBind.DT(((("sm",27),
                [("bool",[25,26,35,46,47,52,53,55,62]),("combin",[19]),
                 ("sat",[1,3,5,6,7,11,14,15]),("sm",[19])]),["DISK_THM"]),
               [ThmBind.read"%86%108%48@%44@%4%44@%48@3%106%48@%99%100%48@%29@2%44@%39@2%99%29@%4%44@%48@2%101%5%44@%48@2%39@4"])
  fun op TR_Trans_lemma x = x
    val op TR_Trans_lemma =
    ThmBind.DT(((("sm",28),
                [("bool",[25,26,35,46,47,50,52,53,55,62,180]),
                 ("combin",[19]),("ind_type",[33,34]),("list",[9]),
                 ("pair",[8,9]),("sat",[1,3,5,6,7,11,14,15]),
                 ("sm",[0,6,7,8,19])]),["DISK_THM"]),
               [ThmBind.read"%86%106%48@%99%100%48@%29@2%44@%39@2%99%29@%4%44@%48@2%101%5%44@%48@2%39@4%108%48@%44@%4%44@%48@3"])
  fun op Trans_Equiv_TR x = x
    val op Trans_Equiv_TR =
    ThmBind.DT(((("sm",29),
                [("bool",[25,26,35,46,47,50,52,53,55,62,93,180]),
                 ("combin",[19]),("ind_type",[33,34]),("list",[9]),
                 ("pair",[8,9]),("sat",[1,3,5,6,7,11,12,13,14,15]),
                 ("sm",[0,6,7,8,19])]),["DISK_THM"]),
               [ThmBind.read"%77%106%48@%99%100%48@%29@2%44@%39@2%99%29@%4%44@%48@2%101%5%44@%48@2%39@4%108%48@%44@%4%44@%48@3"])

  val _ = DB.bindl "sm"
  [("Trans_def",Trans_def,DB.Def),
   ("configuration_TY_DEF",configuration_TY_DEF,DB.Def),
   ("configuration_case_def",configuration_case_def,DB.Def),
   ("configuration_size_def",configuration_size_def,DB.Def),
   ("TR_def",TR_def,DB.Def),
   ("configuration_induction",configuration_induction,DB.Thm),
   ("configuration_Axiom",configuration_Axiom,DB.Thm),
   ("configuration_nchotomy",configuration_nchotomy,DB.Thm),
   ("configuration_case_cong",configuration_case_cong,DB.Thm),
   ("Trans_rules",Trans_rules,DB.Thm), ("Trans_ind",Trans_ind,DB.Thm),
   ("Trans_strongind",Trans_strongind,DB.Thm),
   ("Trans_cases",Trans_cases,DB.Thm),
   ("datatype_configuration",datatype_configuration,DB.Thm),
   ("configuration_11",configuration_11,DB.Thm),
   ("configuration_one_one",configuration_one_one,DB.Thm),
   ("TR_rules",TR_rules,DB.Thm), ("TR_ind",TR_ind,DB.Thm),
   ("TR_strongind",TR_strongind,DB.Thm), ("TR_cases",TR_cases,DB.Thm),
   ("TR_clauses",TR_clauses,DB.Thm),
   ("TR_deterministic",TR_deterministic,DB.Thm),
   ("TR_complete",TR_complete,DB.Thm),
   ("Trans_TR_lemma",Trans_TR_lemma,DB.Thm),
   ("TR_Trans_lemma",TR_Trans_lemma,DB.Thm),
   ("Trans_Equiv_TR",Trans_Equiv_TR,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sm",
    thydataty = "rule_induction",
    read = ThmBind.read,
    data = "sm.Trans_strongind sm.TR_strongind"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sm",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY2.sm,13.configuration"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "sm",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO5.Trans4.%108OO3.CFG3.%99OO18.configuration_CASE4.%110OO18.configuration_size4.%111OO4.case4.%110OO2.TR4.%105"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val sm_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="sm"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val sm_grammars = 
    Portable.## (addtyUDs,addtmUDs) sm_grammars
  val _ = Parse.grammarDB_insert("sm",sm_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG configuration_Axiom,
           case_def=configuration_case_def,
           case_cong=configuration_case_cong,
           induction=ORIG configuration_induction,
           nchotomy=configuration_nchotomy,
           size=SOME(Parse.Term`(sm$configuration_size) :('input -> num$num) ->
('output -> num$num) ->
('state -> num$num) ->
('input, 'output, 'state) sm$configuration -> num$num`,
                     ORIG configuration_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME configuration_11,
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
val _ = Theory.load_complete "sm"
end
