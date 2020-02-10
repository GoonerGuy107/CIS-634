structure nexpTheory :> nexpTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading nexpTheory ... " else ()
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
          ("nexp",
          Arbnum.fromString "1581041000",
          Arbnum.fromString "536128")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "nexp" [("nexp", 0)];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("num", "num"), ID("nexp", "nexp"),
   ID("min", "bool"), ID("ind_type", "recspace"), ID("bool", "!"),
   ID("arithmetic", "*"), ID("arithmetic", "+"), ID("arithmetic", "-"),
   ID("bool", "/\\"), ID("num", "0"), ID("min", "="), ID("min", "==>"),
   ID("bool", "?"), ID("bool", "ARB"), ID("nexp", "Add"),
   ID("arithmetic", "BIT1"), ID("ind_type", "BOTTOM"),
   ID("ind_type", "CONSTR"), ID("bool", "DATATYPE"),
   ID("ind_type", "FCONS"), ID("nexp", "Mult"),
   ID("arithmetic", "NUMERAL"), ID("nexp", "Num"), ID("num", "SUC"),
   ID("nexp", "Sub"), ID("bool", "TYPE_DEFINITION"),
   ID("arithmetic", "ZERO"), ID("bool", "\\/"), ID("nexp", "nexpVal"),
   ID("nexp", "nexp_CASE"), ID("nexp", "nexp_size"), ID("bool", "~")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYOP [1], TYOP [2], TYOP [0, 1, 0], TYV "'a", TYOP [0, 1, 3],
   TYOP [0, 1, 4], TYOP [0, 5, 3], TYOP [0, 5, 6], TYOP [0, 5, 7],
   TYOP [0, 0, 3], TYOP [0, 9, 8], TYOP [0, 1, 10], TYOP [0, 1, 1],
   TYOP [0, 1, 12], TYOP [0, 0, 1], TYOP [3], TYOP [4, 0],
   TYOP [0, 16, 15], TYOP [0, 1, 15], TYOP [0, 3, 3], TYOP [0, 3, 19],
   TYOP [0, 1, 20], TYOP [0, 1, 21], TYOP [0, 13, 15], TYOP [0, 13, 23],
   TYOP [0, 13, 24], TYOP [0, 14, 25], TYOP [0, 1, 16], TYOP [0, 18, 15],
   TYOP [0, 28, 15], TYOP [0, 5, 15], TYOP [0, 30, 15], TYOP [0, 22, 15],
   TYOP [0, 32, 15], TYOP [0, 9, 15], TYOP [0, 34, 15], TYOP [0, 17, 15],
   TYOP [0, 36, 15], TYOP [0, 0, 15], TYOP [0, 38, 15], TYOP [0, 0, 0],
   TYOP [0, 0, 40], TYOP [0, 15, 15], TYOP [0, 15, 42], TYOP [0, 3, 15],
   TYOP [0, 3, 44], TYOP [0, 1, 18], TYOP [0, 0, 38], TYOP [0, 16, 17],
   TYOP [0, 4, 15], TYOP [0, 49, 15], TYOP [0, 27, 15], TYOP [0, 51, 15],
   TYOP [0, 0, 16], TYOP [0, 53, 16], TYOP [0, 0, 54], TYOP [0, 0, 55],
   TYOP [0, 53, 53], TYOP [0, 16, 57], TYOP [0, 17, 51]]
  end
  val _ = Theory.incorporate_consts "nexp" tyvector
     [("nexp_size", 2), ("nexp_CASE", 11), ("nexpVal", 2), ("Sub", 13),
      ("Num", 14), ("Mult", 13), ("Add", 13)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("'nexp'", 17), TMV("M", 1), TMV("M'", 1), TMV("P", 18), TMV("a", 0),
   TMV("a'", 0), TMV("a0", 1), TMV("a0", 16), TMV("a0'", 1),
   TMV("a0'", 16), TMV("a1", 1), TMV("a1", 16), TMV("a1'", 1), TMV("f", 9),
   TMV("f", 1), TMV("f'", 9), TMV("f0", 9), TMV("f1", 5), TMV("f1", 22),
   TMV("f1", 1), TMV("f1'", 5), TMV("f2", 5), TMV("f2", 22), TMV("f2", 1),
   TMV("f2'", 5), TMV("f3", 5), TMV("f3", 22), TMV("f3", 1), TMV("f3'", 5),
   TMV("fn", 4), TMV("n", 1), TMV("n", 0), TMV("n0", 1), TMV("nexp", 26),
   TMV("nn", 1), TMV("num", 0), TMV("rep", 27), TMC(5, 29), TMC(5, 31),
   TMC(5, 33), TMC(5, 35), TMC(5, 37), TMC(5, 28), TMC(5, 39), TMC(5, 36),
   TMC(6, 41), TMC(7, 41), TMC(8, 41), TMC(9, 43), TMC(10, 0), TMC(11, 45),
   TMC(11, 43), TMC(11, 46), TMC(11, 47), TMC(11, 48), TMC(12, 43),
   TMC(13, 50), TMC(13, 52), TMC(13, 28), TMC(13, 39), TMC(13, 36),
   TMC(14, 0), TMC(15, 13), TMC(16, 40), TMC(17, 16), TMC(18, 56),
   TMC(19, 42), TMC(20, 58), TMC(21, 13), TMC(22, 40), TMC(23, 14),
   TMC(24, 40), TMC(25, 13), TMC(26, 59), TMC(27, 0), TMC(28, 43),
   TMC(29, 2), TMC(30, 11), TMC(31, 2), TMC(32, 42)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op nexp_TY_DEF x = x
    val op nexp_TY_DEF =
    ThmBind.DT(((("nexp",0),
                [("bool",[14,25,26,52,131,132,137])]),["DISK_THM"]),
               [ThmBind.read"%57%36%73%9%41%0%55%44%9%55%75%59%4%54$1@%4%65%49@$0@%31%64|@|$0@2|@2%75%60%7%60%11%48%54$2@%7%11%65%71%49@2%61@%67$1@%67$0@%31%64|@3||$1@$0@3%48$3$1@2$3$0@3|@|@2%75%60%7%60%11%48%54$2@%7%11%65%71%71%49@3%61@%67$1@%67$0@%31%64|@3||$1@$0@3%48$3$1@2$3$0@3|@|@2%60%7%60%11%48%54$2@%7%11%65%71%71%71%49@4%61@%67$1@%67$0@%31%64|@3||$1@$0@3%48$3$1@2$3$0@3|@|@5$1$0@2|@2$0$1@2|@|@$0@|@"])
  fun op nexp_case_def x = x
    val op nexp_case_def =
    ThmBind.DT(((("nexp",10),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%48%43%4%40%13%38%17%38%21%38%25%50%77%70$4@2$3@$2@$1@$0@2$3$4@2|@|@|@|@|@2%48%42%6%42%10%40%13%38%17%38%21%38%25%50%77%62$5@$4@2$3@$2@$1@$0@2$2$5@$4@2|@|@|@|@|@|@2%48%42%6%42%10%40%13%38%17%38%21%38%25%50%77%72$5@$4@2$3@$2@$1@$0@2$1$5@$4@2|@|@|@|@|@|@2%42%6%42%10%40%13%38%17%38%21%38%25%50%77%68$5@$4@2$3@$2@$1@$0@2$0$5@$4@2|@|@|@|@|@|@4"])
  fun op nexp_size_def x = x
    val op nexp_size_def =
    ThmBind.DT(((("nexp",11),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%48%43%4%53%78%70$0@3%46%69%63%74@3$0@2|@2%48%42%6%42%10%53%78%62$1@$0@3%46%69%63%74@3%46%78$1@2%78$0@4|@|@2%48%42%6%42%10%53%78%72$1@$0@3%46%69%63%74@3%46%78$1@2%78$0@4|@|@2%42%6%42%10%53%78%68$1@$0@3%46%69%63%74@3%46%78$1@2%78$0@4|@|@4"])
  fun op nexpVal_def x = x
    val op nexpVal_def =
    ThmBind.DT(((("nexp",19),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%48%43%35%53%76%70$0@3$0@|@2%48%42%19%42%23%53%76%62$1@$0@3%46%76$1@2%76$0@3|@|@2%48%42%19%42%23%53%76%72$1@$0@3%47%76$1@2%76$0@3|@|@2%42%19%42%23%53%76%68$1@$0@3%45%76$1@2%76$0@3|@|@4"])
  fun op datatype_nexp x = x
    val op datatype_nexp =
    ThmBind.DT(((("nexp",12),[("bool",[25,170])]),["DISK_THM"]),
               [ThmBind.read"%66%33%70@%62@%72@%68@2"])
  fun op nexp_11 x = x
    val op nexp_11 =
    ThmBind.DT(((("nexp",13),
                [("bool",[14,25,26,30,50,52,55,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%48%43%4%43%5%51%52%70$1@2%70$0@3%53$1@$0@2|@|@2%48%42%6%42%10%42%8%42%12%51%52%62$3@$2@2%62$1@$0@3%48%52$3@$1@2%52$2@$0@3|@|@|@|@2%48%42%6%42%10%42%8%42%12%51%52%72$3@$2@2%72$1@$0@3%48%52$3@$1@2%52$2@$0@3|@|@|@|@2%42%6%42%10%42%8%42%12%51%52%68$3@$2@2%68$1@$0@3%48%52$3@$1@2%52$2@$0@3|@|@|@|@4"])
  fun op nexp_distinct x = x
    val op nexp_distinct =
    ThmBind.DT(((("nexp",14),
                [("bool",
                 [14,25,26,30,35,46,50,52,53,55,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%48%42%10%42%6%43%4%79%52%70$0@2%62$1@$2@3|@|@|@2%48%42%10%42%6%43%4%79%52%70$0@2%72$1@$2@3|@|@|@2%48%42%10%42%6%43%4%79%52%70$0@2%68$1@$2@3|@|@|@2%48%42%12%42%10%42%8%42%6%79%52%62$0@$2@2%72$1@$3@3|@|@|@|@2%48%42%12%42%10%42%8%42%6%79%52%62$0@$2@2%68$1@$3@3|@|@|@|@2%42%12%42%10%42%8%42%6%79%52%72$0@$2@2%68$1@$3@3|@|@|@|@6"])
  fun op nexp_case_cong x = x
    val op nexp_case_cong =
    ThmBind.DT(((("nexp",15),
                [("bool",[14,25,26,52,131,132,137,180]),
                 ("nexp",[1,2,3,4,5,6,7,8,9,10])]),["DISK_THM"]),
               [ThmBind.read"%42%1%42%2%40%13%38%17%38%21%38%25%55%48%52$5@$4@2%48%43%4%55%52$5@%70$0@3%50$4$0@2%15$0@3|@2%48%42%6%42%10%55%52$6@%62$1@$0@3%50$4$1@$0@2%20$1@$0@3|@|@2%48%42%6%42%10%55%52$6@%72$1@$0@3%50$3$1@$0@2%24$1@$0@3|@|@2%42%6%42%10%55%52$6@%68$1@$0@3%50$2$1@$0@2%28$1@$0@3|@|@6%50%77$5@$3@$2@$1@$0@2%77$4@%15@%20@%24@%28@3|@|@|@|@|@|@"])
  fun op nexp_nchotomy x = x
    val op nexp_nchotomy =
    ThmBind.DT(((("nexp",16),
                [("bool",[14,25,26,52,131,132,137,180]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%42%34%75%59%31%52$1@%70$0@2|@2%75%58%30%58%32%52$2@%62$1@$0@2|@|@2%75%58%30%58%32%52$2@%72$1@$0@2|@|@2%58%30%58%32%52$2@%68$1@$0@2|@|@4|@"])
  fun op nexp_Axiom x = x
    val op nexp_Axiom =
    ThmBind.DT(((("nexp",17),
                [("bool",[14,25,26,30,52,62,131,132,137,180]),
                 ("ind_type",[33,34]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%40%16%39%18%39%22%39%26%56%29%48%43%4%50$1%70$0@3$5$0@2|@2%48%42%6%42%10%50$2%62$1@$0@3$5$1@$0@$2$1@2$2$0@3|@|@2%48%42%6%42%10%50$2%72$1@$0@3$4$1@$0@$2$1@2$2$0@3|@|@2%42%6%42%10%50$2%68$1@$0@3$3$1@$0@$2$1@2$2$0@3|@|@4|@|@|@|@|@"])
  fun op nexp_induction x = x
    val op nexp_induction =
    ThmBind.DT(((("nexp",18),
                [("bool",[14,25,26,52,131,132,137]),
                 ("nexp",[1,2,3,4,5,6,7,8,9])]),["DISK_THM"]),
               [ThmBind.read"%37%3%55%48%43%31$1%70$0@2|@2%48%42%30%42%32%55%48$2$1@2$2$0@3$2%62$1@$0@3|@|@2%48%42%30%42%32%55%48$2$1@2$2$0@3$2%72$1@$0@3|@|@2%42%30%42%32%55%48$2$1@2$2$0@3$2%68$1@$0@3|@|@5%42%30$1$0@|@2|@"])
  fun op Add_0 x = x
    val op Add_0 =
    ThmBind.DT(((("nexp",20),
                [("arithmetic",[24]),
                 ("bool",[14,25,26,35,52,55,131,132,137]),
                 ("nexp",[1,2,3,4,5,6,7,8,9,19])]),["DISK_THM"]),
               [ThmBind.read"%42%14%53%76%62%70%49@2$0@3%76$0@2|@"])
  fun op Add_SYM x = x
    val op Add_SYM =
    ThmBind.DT(((("nexp",21),
                [("arithmetic",[25]),
                 ("bool",
                 [13,14,25,26,27,29,46,47,50,51,52,53,55,62,70,92,93,95,
                  131,132,137]),("nexp",[1,2,3,4,5,6,7,8,9,19]),
                 ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%42%19%42%23%53%76%62$1@$0@3%76%62$0@$1@3|@|@"])
  fun op Sub_0 x = x
    val op Sub_0 =
    ThmBind.DT(((("nexp",22),
                [("arithmetic",[63]),
                 ("bool",
                 [13,14,25,26,27,29,46,47,50,51,52,53,55,57,62,70,72,75,92,
                  93,95,131,132,137]),("nexp",[1,2,3,4,5,6,7,8,9,19]),
                 ("sat",[1,3,5,6,7,11,12,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%42%14%48%53%76%72%70%49@2$0@3%49@2%53%76%72$0@%70%49@4%76$0@3|@"])
  fun op Mult_ASSOC x = x
    val op Mult_ASSOC =
    ThmBind.DT(((("nexp",23),
                [("arithmetic",[78]),
                 ("bool",[14,25,26,35,52,55,131,132,137]),
                 ("nexp",[1,2,3,4,5,6,7,8,9,19])]),["DISK_THM"]),
               [ThmBind.read"%42%19%42%23%42%27%53%76%68$2@%68$1@$0@4%76%68%68$2@$1@2$0@3|@|@|@"])

  val _ = DB.bindl "nexp"
  [("nexp_TY_DEF",nexp_TY_DEF,DB.Def),
   ("nexp_case_def",nexp_case_def,DB.Def),
   ("nexp_size_def",nexp_size_def,DB.Def),
   ("nexpVal_def",nexpVal_def,DB.Def),
   ("datatype_nexp",datatype_nexp,DB.Thm), ("nexp_11",nexp_11,DB.Thm),
   ("nexp_distinct",nexp_distinct,DB.Thm),
   ("nexp_case_cong",nexp_case_cong,DB.Thm),
   ("nexp_nchotomy",nexp_nchotomy,DB.Thm),
   ("nexp_Axiom",nexp_Axiom,DB.Thm),
   ("nexp_induction",nexp_induction,DB.Thm), ("Add_0",Add_0,DB.Thm),
   ("Add_SYM",Add_SYM,DB.Thm), ("Sub_0",Sub_0,DB.Thm),
   ("Mult_ASSOC",Mult_ASSOC,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "compute",
    read = ThmBind.read,
    data = "nexp.nexpVal_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "TypeGrammarDeltas",
    read = ThmBind.read,
    data = "NTY4.nexp,4.nexp"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "nexp",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data =
        "OO3.Num3.%70OO3.Add3.%62OO3.Sub3.%72OO4.Mult3.%68OO9.nexp_CASE3.%77OO9.nexp_size3.%78OO4.case3.%77OO7.nexpVal3.%76"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val nexp_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="nexp"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val nexp_grammars = 
    Portable.## (addtyUDs,addtmUDs) nexp_grammars
  val _ = Parse.grammarDB_insert("nexp",nexp_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end


  val _ =
    TypeBase.write [
      let
        open TypeBasePure
        val tyinfo0 = mk_datatype_info
          {ax=ORIG nexp_Axiom,
           case_def=nexp_case_def,
           case_cong=nexp_case_cong,
           induction=ORIG nexp_induction,
           nchotomy=nexp_nchotomy,
           size=SOME(Parse.Term`(nexp$nexp_size) :nexp$nexp -> num$num`,
                     ORIG nexp_size_def),
           encode = NONE,
           lift=NONE,
           one_one=SOME nexp_11,
           distinct=SOME nexp_distinct,
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
val _ = Theory.load_complete "nexp"
end
