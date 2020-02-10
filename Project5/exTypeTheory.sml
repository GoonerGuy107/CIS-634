structure exTypeTheory :> exTypeTheory =
struct
  val _ = if !Globals.print_thy_loads then TextIO.print "Loading exTypeTheory ... " else ()
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
          ("exType",
          Arbnum.fromString "1581041000",
          Arbnum.fromString "957818")
          [("indexedLists",
           Arbnum.fromString "1503148856",
           Arbnum.fromString "404777"),
           ("patternMatches",
           Arbnum.fromString "1503148884",
           Arbnum.fromString "20925")];
  val _ = Theory.incorporate_types "exType" [];

  val idvector = 
    let fun ID(thy,oth) = {Thy = thy, Other = oth}
    in Vector.fromList
  [ID("min", "fun"), ID("list", "list"), ID("bool", "!"),
   ID("min", "bool"), ID("arithmetic", "+"), ID("num", "num"),
   ID("bool", "/\\"), ID("min", "="), ID("exType", "APP"),
   ID("list", "CONS"), ID("list", "LENGTH"), ID("exType", "Map"),
   ID("list", "NIL")]
  end;
  local open SharingTables
  in
  val tyvector = build_type_vector idvector
  [TYV "'b", TYOP [1, 0], TYV "'a", TYOP [1, 2], TYOP [0, 3, 1],
   TYOP [0, 2, 0], TYOP [0, 5, 4], TYOP [0, 3, 3], TYOP [0, 3, 7],
   TYOP [0, 0, 2], TYOP [3], TYOP [0, 2, 10], TYOP [0, 11, 10],
   TYOP [0, 5, 10], TYOP [0, 13, 10], TYOP [0, 3, 10], TYOP [0, 15, 10],
   TYOP [5], TYOP [0, 17, 17], TYOP [0, 17, 18], TYOP [0, 10, 10],
   TYOP [0, 10, 20], TYOP [0, 3, 15], TYOP [0, 1, 10], TYOP [0, 1, 23],
   TYOP [0, 17, 10], TYOP [0, 17, 25], TYOP [0, 1, 1], TYOP [0, 1, 27],
   TYOP [0, 2, 7], TYOP [0, 0, 27], TYOP [0, 3, 17], TYOP [0, 1, 3],
   TYOP [0, 9, 32]]
  end
  val _ = Theory.incorporate_consts "exType" tyvector
     [("Map", 6), ("APP", 8)];

  local open SharingTables
  in
  val tmvector = build_term_vector idvector tyvector
  [TMV("f", 5), TMV("f", 9), TMV("h", 2), TMV("l", 3), TMV("l1", 3),
   TMV("l1", 1), TMV("l2", 3), TMV("l2", 1), TMV("l3", 3), TMC(2, 12),
   TMC(2, 14), TMC(2, 16), TMC(4, 19), TMC(6, 21), TMC(7, 22), TMC(7, 24),
   TMC(7, 26), TMC(8, 8), TMC(8, 28), TMC(9, 29), TMC(9, 30), TMC(10, 31),
   TMC(11, 6), TMC(11, 33), TMC(12, 3), TMC(12, 1)]
  end
  structure ThmBind = struct
    val DT = Thm.disk_thm
    val read = Term.read_raw tmvector
  end
  fun op APP_def x = x
    val op APP_def =
    ThmBind.DT(((("exType",0),[("list",[13])]),["DISK_THM"]),
               [ThmBind.read"%13%11%3%14%17%24@$0@2$0@|@2%9%2%11%4%11%6%14%17%19$2@$1@2$0@2%19$2@%17$1@$0@3|@|@|@2"])
  fun op Map_def x = x
    val op Map_def =
    ThmBind.DT(((("exType",3),[("list",[13])]),["DISK_THM"]),
               [ThmBind.read"%13%10%0%15%22$0@%24@2%25@|@2%10%0%9%2%11%4%15%22$2@%19$1@$0@3%20$2$1@2%22$2@$0@3|@|@|@2"])
  fun op APP_ASSOC x = x
    val op APP_ASSOC =
    ThmBind.DT(((("exType",1),
                [("bool",
                 [13,14,25,26,27,29,46,47,50,51,52,53,55,62,70,92,93,95]),
                 ("exType",[0]),("list",[43]),
                 ("sat",[1,3,5,6,7,11,13,14,15])]),["DISK_THM"]),
               [ThmBind.read"%11%4%11%6%11%8%14%17%17$2@$1@2$0@2%17$2@%17$1@$0@3|@|@|@"])
  fun op LENGTH_APP x = x
    val op LENGTH_APP =
    ThmBind.DT(((("exType",2),
                [("arithmetic",[24]),("bool",[14,25,35,55]),("exType",[0]),
                 ("list",[22,43])]),["DISK_THM"]),
               [ThmBind.read"%11%4%11%6%16%21%17$1@$0@3%12%21$1@2%21$0@3|@|@"])
  fun op Map_APP x = x
    val op Map_APP =
    ThmBind.DT(((("exType",4),
                [("bool",[14,25,35,55]),("exType",[0,3]),
                 ("list",[43])]),["DISK_THM"]),
               [ThmBind.read"%14%23%1@%18%5@%7@3%17%23%1@%5@2%23%1@%7@3"])

  val _ = DB.bindl "exType"
  [("APP_def",APP_def,DB.Def), ("Map_def",Map_def,DB.Def),
   ("APP_ASSOC",APP_ASSOC,DB.Thm), ("LENGTH_APP",LENGTH_APP,DB.Thm),
   ("Map_APP",Map_APP,DB.Thm)]

  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "compute",
    read = ThmBind.read,
    data = "exType.APP_def exType.Map_def"
  }
  val _ = Theory.LoadableThyData.temp_encoded_update {
    thy = "exType",
    thydataty = "TermGrammarDeltas",
    read = ThmBind.read,
    data = "OO3.APP3.%17OO3.Map3.%22"
  }
  local open GrammarSpecials Parse
    fun UTOFF f = Feedback.trace("Parse.unicode_trace_off_complaints",0)f
  in
  val exType_grammars = merge_grammars ["indexedLists", "patternMatches"]
  local
  val (tyUDs, tmUDs) = GrammarDeltas.thy_deltas{thyname="exType"}
  val addtmUDs = term_grammar.add_deltas tmUDs
  val addtyUDs = type_grammar.apply_deltas tyUDs
  in
  val exType_grammars = 
    Portable.## (addtyUDs,addtmUDs) exType_grammars
  val _ = Parse.grammarDB_insert("exType",exType_grammars)
  val _ = Parse.temp_set_grammars (addtyUDs (Parse.type_grammar()), addtmUDs (Parse.term_grammar()))
  end (* addUDs local *)
  end

val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "exType"
end
