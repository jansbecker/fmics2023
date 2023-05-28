(set-info :smt-lib-version 2.6)
(set-info :source |Generated by: Jan Steffen Becker
Copyright: (C) 2023 DLR e. V.|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-logic QF_LRA)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
(set-option :sat.core.minimize true)
(set-option :smt.core.minimize true)
(set-option :model.compact true)
(set-option :model.completion true)
(declare-fun tmp_7__ID_10_rel () Bool)
(declare-fun tmp_15__ID_23_rel () Bool)
(declare-fun tmp_22__ID_37_rel () Bool)
(define-fun
  bmc_init
  ((time Real)
    (tmp_0__AND_1_complete Bool) (tmp_1__Chop_5_start Bool) (tmp_2__State_6_complete Bool) (tmp_3__State_6_ok Bool)
    (tmp_4__AND_7_start Bool) (tmp_5__AND_7_complete Bool) (tmp_6__StateVar_0____syncb_past Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_9__BoolConstant_14_start Bool) (tmp_10__Chop_18_start Bool)
    (tmp_11__State_19_complete Bool) (tmp_12__State_19_ok Bool) (tmp_13__AND_20_start Bool)
    (tmp_14__AND_20_complete Bool) (tmp_16__BoolConstant_27_start Bool) (tmp_17__Chop_31_start Bool)
    (tmp_18__State_32_complete Bool) (tmp_19__State_32_ok Bool) (tmp_20__AND_33_start Bool)
    (tmp_21__AND_33_complete Bool) (tmp_23__State_41_complete Bool) (tmp_24__State_41_ok Bool)
    (tmp_25__BoolConstant_42_start Bool))
  Bool
  (and
    (=> tmp_1__Chop_5_start true) (not tmp_2__State_6_complete) tmp_3__State_6_ok
    (=> tmp_4__AND_7_start tmp_2__State_6_complete)
    (=>
      tmp_7__ID_10_rel
      (and
        (=> tmp_6__StateVar_0____syncb_past tmp_4__AND_7_start) (=> tmp_4__AND_7_start tmp_6__StateVar_0____syncb_past)))
    (=
      tmp_5__AND_7_complete
      (and
        tmp_4__AND_7_start
        (and tmp_7__ID_10_rel (and (=> tmp_8__StateVar_0____synce_past true) (=> true tmp_8__StateVar_0____synce_past)))))
    (=> tmp_9__BoolConstant_14_start tmp_5__AND_7_complete) (=> tmp_10__Chop_18_start true)
    (not tmp_11__State_19_complete) tmp_12__State_19_ok (=> tmp_13__AND_20_start tmp_11__State_19_complete)
    (=> tmp_15__ID_23_rel (=> tmp_6__StateVar_0____syncb_past tmp_13__AND_20_start))
    (=
      tmp_14__AND_20_complete
      (and tmp_13__AND_20_start (and tmp_15__ID_23_rel (=> true tmp_8__StateVar_0____synce_past))))
    (=> tmp_16__BoolConstant_27_start tmp_14__AND_20_complete) (=> tmp_17__Chop_31_start true)
    (not tmp_18__State_32_complete) tmp_19__State_32_ok (=> tmp_20__AND_33_start tmp_18__State_32_complete)
    (=> tmp_22__ID_37_rel (=> tmp_6__StateVar_0____syncb_past tmp_20__AND_33_start)) (not tmp_23__State_41_complete)
    tmp_24__State_41_ok
    (=
      tmp_21__AND_33_complete
      (and
        tmp_20__AND_33_start
        (and (and tmp_22__ID_37_rel (=> true tmp_8__StateVar_0____synce_past)) tmp_23__State_41_complete)))
    (=> tmp_25__BoolConstant_42_start tmp_21__AND_33_complete)
    (=
      tmp_0__AND_1_complete
      (and true (and tmp_9__BoolConstant_14_start tmp_16__BoolConstant_27_start tmp_25__BoolConstant_42_start)))
    (> time 0.0)))
(define-fun
  bmc_step
  ((time Real)
    (time@ Real) (tmp_0__AND_1_complete Bool) (tmp_0__AND_1_complete@ Bool) (tmp_1__Chop_5_start Bool)
    (tmp_1__Chop_5_start@ Bool) (tmp_2__State_6_complete Bool) (tmp_2__State_6_complete@ Bool) (tmp_3__State_6_ok Bool)
    (tmp_3__State_6_ok@ Bool) (tmp_4__AND_7_start Bool) (tmp_4__AND_7_start@ Bool) (tmp_5__AND_7_complete Bool)
    (tmp_5__AND_7_complete@ Bool) (tmp_6__StateVar_0____syncb_past Bool) (tmp_6__StateVar_0____syncb_past@ Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_8__StateVar_0____synce_past@ Bool) (tmp_9__BoolConstant_14_start Bool)
    (tmp_9__BoolConstant_14_start@ Bool) (tmp_10__Chop_18_start Bool) (tmp_10__Chop_18_start@ Bool)
    (tmp_11__State_19_complete Bool) (tmp_11__State_19_complete@ Bool) (tmp_12__State_19_ok Bool)
    (tmp_12__State_19_ok@ Bool) (tmp_13__AND_20_start Bool) (tmp_13__AND_20_start@ Bool) (tmp_14__AND_20_complete Bool)
    (tmp_14__AND_20_complete@ Bool) (tmp_16__BoolConstant_27_start Bool) (tmp_16__BoolConstant_27_start@ Bool)
    (tmp_17__Chop_31_start Bool) (tmp_17__Chop_31_start@ Bool) (tmp_18__State_32_complete Bool)
    (tmp_18__State_32_complete@ Bool) (tmp_19__State_32_ok Bool) (tmp_19__State_32_ok@ Bool) (tmp_20__AND_33_start Bool)
    (tmp_20__AND_33_start@ Bool) (tmp_21__AND_33_complete Bool) (tmp_21__AND_33_complete@ Bool)
    (tmp_23__State_41_complete Bool) (tmp_23__State_41_complete@ Bool) (tmp_24__State_41_ok Bool)
    (tmp_24__State_41_ok@ Bool) (tmp_25__BoolConstant_42_start Bool) (tmp_25__BoolConstant_42_start@ Bool))
  Bool
  (and
    (=> tmp_1__Chop_5_start tmp_1__Chop_5_start@) (=> tmp_1__Chop_5_start@ (or tmp_1__Chop_5_start true))
    (= tmp_2__State_6_complete@ (and tmp_1__Chop_5_start tmp_3__State_6_ok@))
    (= tmp_3__State_6_ok@ (=> tmp_1__Chop_5_start (and tmp_3__State_6_ok true)))
    (=> tmp_4__AND_7_start tmp_4__AND_7_start@)
    (=> tmp_4__AND_7_start@ (or tmp_4__AND_7_start tmp_2__State_6_complete@))
    (=>
      tmp_7__ID_10_rel
      (and
        (=> tmp_6__StateVar_0____syncb_past@ tmp_4__AND_7_start@)
        (=> tmp_4__AND_7_start@ tmp_6__StateVar_0____syncb_past@)))
    (=
      tmp_5__AND_7_complete@
      (and
        tmp_4__AND_7_start@
        (and tmp_7__ID_10_rel (and (not tmp_8__StateVar_0____synce_past) tmp_8__StateVar_0____synce_past@))))
    (=> tmp_9__BoolConstant_14_start tmp_9__BoolConstant_14_start@)
    (=> tmp_9__BoolConstant_14_start@ (or tmp_9__BoolConstant_14_start tmp_5__AND_7_complete@))
    (=> tmp_10__Chop_18_start tmp_10__Chop_18_start@) (=> tmp_10__Chop_18_start@ (or tmp_10__Chop_18_start true))
    (= tmp_11__State_19_complete@ (and tmp_10__Chop_18_start tmp_12__State_19_ok@))
    (= tmp_12__State_19_ok@ (=> tmp_10__Chop_18_start (and tmp_12__State_19_ok true)))
    (=> tmp_13__AND_20_start tmp_13__AND_20_start@)
    (=> tmp_13__AND_20_start@ (or tmp_13__AND_20_start tmp_11__State_19_complete@))
    (=> tmp_15__ID_23_rel (=> tmp_6__StateVar_0____syncb_past@ tmp_13__AND_20_start@))
    (= tmp_14__AND_20_complete@ (and tmp_13__AND_20_start@ (and tmp_15__ID_23_rel tmp_8__StateVar_0____synce_past@)))
    (=> tmp_16__BoolConstant_27_start tmp_16__BoolConstant_27_start@)
    (=> tmp_16__BoolConstant_27_start@ (or tmp_16__BoolConstant_27_start tmp_14__AND_20_complete@))
    (=> tmp_17__Chop_31_start tmp_17__Chop_31_start@) (=> tmp_17__Chop_31_start@ (or tmp_17__Chop_31_start true))
    (= tmp_18__State_32_complete@ (and tmp_17__Chop_31_start tmp_19__State_32_ok@))
    (= tmp_19__State_32_ok@ (=> tmp_17__Chop_31_start (and tmp_19__State_32_ok true)))
    (=> tmp_20__AND_33_start tmp_20__AND_33_start@)
    (=> tmp_20__AND_33_start@ (or tmp_20__AND_33_start tmp_18__State_32_complete@))
    (=> tmp_22__ID_37_rel (=> tmp_6__StateVar_0____syncb_past@ tmp_20__AND_33_start@))
    (= tmp_23__State_41_complete@ (and tmp_20__AND_33_start tmp_24__State_41_ok@))
    (= tmp_24__State_41_ok@ (=> tmp_20__AND_33_start (and tmp_24__State_41_ok true)))
    (=
      tmp_21__AND_33_complete@
      (and
        tmp_20__AND_33_start@ (and (and tmp_22__ID_37_rel tmp_8__StateVar_0____synce_past@) tmp_23__State_41_complete@)))
    (=> tmp_25__BoolConstant_42_start tmp_25__BoolConstant_42_start@)
    (=> tmp_25__BoolConstant_42_start@ (or tmp_25__BoolConstant_42_start tmp_21__AND_33_complete@))
    (=
      tmp_0__AND_1_complete@
      (and true (and tmp_9__BoolConstant_14_start@ tmp_16__BoolConstant_27_start@ tmp_25__BoolConstant_42_start@)))
    (=> tmp_8__StateVar_0____synce_past tmp_8__StateVar_0____synce_past@)
    (=> tmp_6__StateVar_0____syncb_past tmp_6__StateVar_0____syncb_past@) (< time time@)))
(define-fun
  bmc_target
  ((time Real)
    (tmp_0__AND_1_complete Bool) (tmp_1__Chop_5_start Bool) (tmp_2__State_6_complete Bool) (tmp_3__State_6_ok Bool)
    (tmp_4__AND_7_start Bool) (tmp_5__AND_7_complete Bool) (tmp_6__StateVar_0____syncb_past Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_9__BoolConstant_14_start Bool) (tmp_10__Chop_18_start Bool)
    (tmp_11__State_19_complete Bool) (tmp_12__State_19_ok Bool) (tmp_13__AND_20_start Bool)
    (tmp_14__AND_20_complete Bool) (tmp_16__BoolConstant_27_start Bool) (tmp_17__Chop_31_start Bool)
    (tmp_18__State_32_complete Bool) (tmp_19__State_32_ok Bool) (tmp_20__AND_33_start Bool)
    (tmp_21__AND_33_complete Bool) (tmp_23__State_41_complete Bool) (tmp_24__State_41_ok Bool)
    (tmp_25__BoolConstant_42_start Bool))
  Bool tmp_0__AND_1_complete)
(declare-fun time@0 () Real)
(declare-fun tmp_0__AND_1_complete@0 () Bool)
(declare-fun tmp_1__Chop_5_start@0 () Bool)
(declare-fun tmp_2__State_6_complete@0 () Bool)
(declare-fun tmp_3__State_6_ok@0 () Bool)
(declare-fun tmp_4__AND_7_start@0 () Bool)
(declare-fun tmp_5__AND_7_complete@0 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@0 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@0 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@0 () Bool)
(declare-fun tmp_10__Chop_18_start@0 () Bool)
(declare-fun tmp_11__State_19_complete@0 () Bool)
(declare-fun tmp_12__State_19_ok@0 () Bool)
(declare-fun tmp_13__AND_20_start@0 () Bool)
(declare-fun tmp_14__AND_20_complete@0 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@0 () Bool)
(declare-fun tmp_17__Chop_31_start@0 () Bool)
(declare-fun tmp_18__State_32_complete@0 () Bool)
(declare-fun tmp_19__State_32_ok@0 () Bool)
(declare-fun tmp_20__AND_33_start@0 () Bool)
(declare-fun tmp_21__AND_33_complete@0 () Bool)
(declare-fun tmp_23__State_41_complete@0 () Bool)
(declare-fun tmp_24__State_41_ok@0 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@0 () Bool)
(declare-fun time@1 () Real)
(declare-fun tmp_0__AND_1_complete@1 () Bool)
(declare-fun tmp_1__Chop_5_start@1 () Bool)
(declare-fun tmp_2__State_6_complete@1 () Bool)
(declare-fun tmp_3__State_6_ok@1 () Bool)
(declare-fun tmp_4__AND_7_start@1 () Bool)
(declare-fun tmp_5__AND_7_complete@1 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@1 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@1 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@1 () Bool)
(declare-fun tmp_10__Chop_18_start@1 () Bool)
(declare-fun tmp_11__State_19_complete@1 () Bool)
(declare-fun tmp_12__State_19_ok@1 () Bool)
(declare-fun tmp_13__AND_20_start@1 () Bool)
(declare-fun tmp_14__AND_20_complete@1 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@1 () Bool)
(declare-fun tmp_17__Chop_31_start@1 () Bool)
(declare-fun tmp_18__State_32_complete@1 () Bool)
(declare-fun tmp_19__State_32_ok@1 () Bool)
(declare-fun tmp_20__AND_33_start@1 () Bool)
(declare-fun tmp_21__AND_33_complete@1 () Bool)
(declare-fun tmp_23__State_41_complete@1 () Bool)
(declare-fun tmp_24__State_41_ok@1 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@1 () Bool)
(declare-fun time@2 () Real)
(declare-fun tmp_0__AND_1_complete@2 () Bool)
(declare-fun tmp_1__Chop_5_start@2 () Bool)
(declare-fun tmp_2__State_6_complete@2 () Bool)
(declare-fun tmp_3__State_6_ok@2 () Bool)
(declare-fun tmp_4__AND_7_start@2 () Bool)
(declare-fun tmp_5__AND_7_complete@2 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@2 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@2 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@2 () Bool)
(declare-fun tmp_10__Chop_18_start@2 () Bool)
(declare-fun tmp_11__State_19_complete@2 () Bool)
(declare-fun tmp_12__State_19_ok@2 () Bool)
(declare-fun tmp_13__AND_20_start@2 () Bool)
(declare-fun tmp_14__AND_20_complete@2 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@2 () Bool)
(declare-fun tmp_17__Chop_31_start@2 () Bool)
(declare-fun tmp_18__State_32_complete@2 () Bool)
(declare-fun tmp_19__State_32_ok@2 () Bool)
(declare-fun tmp_20__AND_33_start@2 () Bool)
(declare-fun tmp_21__AND_33_complete@2 () Bool)
(declare-fun tmp_23__State_41_complete@2 () Bool)
(declare-fun tmp_24__State_41_ok@2 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@2 () Bool)
(declare-fun time@3 () Real)
(declare-fun tmp_0__AND_1_complete@3 () Bool)
(declare-fun tmp_1__Chop_5_start@3 () Bool)
(declare-fun tmp_2__State_6_complete@3 () Bool)
(declare-fun tmp_3__State_6_ok@3 () Bool)
(declare-fun tmp_4__AND_7_start@3 () Bool)
(declare-fun tmp_5__AND_7_complete@3 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@3 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@3 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@3 () Bool)
(declare-fun tmp_10__Chop_18_start@3 () Bool)
(declare-fun tmp_11__State_19_complete@3 () Bool)
(declare-fun tmp_12__State_19_ok@3 () Bool)
(declare-fun tmp_13__AND_20_start@3 () Bool)
(declare-fun tmp_14__AND_20_complete@3 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@3 () Bool)
(declare-fun tmp_17__Chop_31_start@3 () Bool)
(declare-fun tmp_18__State_32_complete@3 () Bool)
(declare-fun tmp_19__State_32_ok@3 () Bool)
(declare-fun tmp_20__AND_33_start@3 () Bool)
(declare-fun tmp_21__AND_33_complete@3 () Bool)
(declare-fun tmp_23__State_41_complete@3 () Bool)
(declare-fun tmp_24__State_41_ok@3 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@3 () Bool)
(declare-fun time@4 () Real)
(declare-fun tmp_0__AND_1_complete@4 () Bool)
(declare-fun tmp_1__Chop_5_start@4 () Bool)
(declare-fun tmp_2__State_6_complete@4 () Bool)
(declare-fun tmp_3__State_6_ok@4 () Bool)
(declare-fun tmp_4__AND_7_start@4 () Bool)
(declare-fun tmp_5__AND_7_complete@4 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@4 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@4 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@4 () Bool)
(declare-fun tmp_10__Chop_18_start@4 () Bool)
(declare-fun tmp_11__State_19_complete@4 () Bool)
(declare-fun tmp_12__State_19_ok@4 () Bool)
(declare-fun tmp_13__AND_20_start@4 () Bool)
(declare-fun tmp_14__AND_20_complete@4 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@4 () Bool)
(declare-fun tmp_17__Chop_31_start@4 () Bool)
(declare-fun tmp_18__State_32_complete@4 () Bool)
(declare-fun tmp_19__State_32_ok@4 () Bool)
(declare-fun tmp_20__AND_33_start@4 () Bool)
(declare-fun tmp_21__AND_33_complete@4 () Bool)
(declare-fun tmp_23__State_41_complete@4 () Bool)
(declare-fun tmp_24__State_41_ok@4 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@4 () Bool)
(declare-fun time@5 () Real)
(declare-fun tmp_0__AND_1_complete@5 () Bool)
(declare-fun tmp_1__Chop_5_start@5 () Bool)
(declare-fun tmp_2__State_6_complete@5 () Bool)
(declare-fun tmp_3__State_6_ok@5 () Bool)
(declare-fun tmp_4__AND_7_start@5 () Bool)
(declare-fun tmp_5__AND_7_complete@5 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@5 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@5 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@5 () Bool)
(declare-fun tmp_10__Chop_18_start@5 () Bool)
(declare-fun tmp_11__State_19_complete@5 () Bool)
(declare-fun tmp_12__State_19_ok@5 () Bool)
(declare-fun tmp_13__AND_20_start@5 () Bool)
(declare-fun tmp_14__AND_20_complete@5 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@5 () Bool)
(declare-fun tmp_17__Chop_31_start@5 () Bool)
(declare-fun tmp_18__State_32_complete@5 () Bool)
(declare-fun tmp_19__State_32_ok@5 () Bool)
(declare-fun tmp_20__AND_33_start@5 () Bool)
(declare-fun tmp_21__AND_33_complete@5 () Bool)
(declare-fun tmp_23__State_41_complete@5 () Bool)
(declare-fun tmp_24__State_41_ok@5 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@5 () Bool)
(declare-fun time@6 () Real)
(declare-fun tmp_0__AND_1_complete@6 () Bool)
(declare-fun tmp_1__Chop_5_start@6 () Bool)
(declare-fun tmp_2__State_6_complete@6 () Bool)
(declare-fun tmp_3__State_6_ok@6 () Bool)
(declare-fun tmp_4__AND_7_start@6 () Bool)
(declare-fun tmp_5__AND_7_complete@6 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@6 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@6 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@6 () Bool)
(declare-fun tmp_10__Chop_18_start@6 () Bool)
(declare-fun tmp_11__State_19_complete@6 () Bool)
(declare-fun tmp_12__State_19_ok@6 () Bool)
(declare-fun tmp_13__AND_20_start@6 () Bool)
(declare-fun tmp_14__AND_20_complete@6 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@6 () Bool)
(declare-fun tmp_17__Chop_31_start@6 () Bool)
(declare-fun tmp_18__State_32_complete@6 () Bool)
(declare-fun tmp_19__State_32_ok@6 () Bool)
(declare-fun tmp_20__AND_33_start@6 () Bool)
(declare-fun tmp_21__AND_33_complete@6 () Bool)
(declare-fun tmp_23__State_41_complete@6 () Bool)
(declare-fun tmp_24__State_41_ok@6 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@6 () Bool)
(declare-fun time@7 () Real)
(declare-fun tmp_0__AND_1_complete@7 () Bool)
(declare-fun tmp_1__Chop_5_start@7 () Bool)
(declare-fun tmp_2__State_6_complete@7 () Bool)
(declare-fun tmp_3__State_6_ok@7 () Bool)
(declare-fun tmp_4__AND_7_start@7 () Bool)
(declare-fun tmp_5__AND_7_complete@7 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@7 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@7 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@7 () Bool)
(declare-fun tmp_10__Chop_18_start@7 () Bool)
(declare-fun tmp_11__State_19_complete@7 () Bool)
(declare-fun tmp_12__State_19_ok@7 () Bool)
(declare-fun tmp_13__AND_20_start@7 () Bool)
(declare-fun tmp_14__AND_20_complete@7 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@7 () Bool)
(declare-fun tmp_17__Chop_31_start@7 () Bool)
(declare-fun tmp_18__State_32_complete@7 () Bool)
(declare-fun tmp_19__State_32_ok@7 () Bool)
(declare-fun tmp_20__AND_33_start@7 () Bool)
(declare-fun tmp_21__AND_33_complete@7 () Bool)
(declare-fun tmp_23__State_41_complete@7 () Bool)
(declare-fun tmp_24__State_41_ok@7 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@7 () Bool)
(declare-fun time@8 () Real)
(declare-fun tmp_0__AND_1_complete@8 () Bool)
(declare-fun tmp_1__Chop_5_start@8 () Bool)
(declare-fun tmp_2__State_6_complete@8 () Bool)
(declare-fun tmp_3__State_6_ok@8 () Bool)
(declare-fun tmp_4__AND_7_start@8 () Bool)
(declare-fun tmp_5__AND_7_complete@8 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@8 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@8 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@8 () Bool)
(declare-fun tmp_10__Chop_18_start@8 () Bool)
(declare-fun tmp_11__State_19_complete@8 () Bool)
(declare-fun tmp_12__State_19_ok@8 () Bool)
(declare-fun tmp_13__AND_20_start@8 () Bool)
(declare-fun tmp_14__AND_20_complete@8 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@8 () Bool)
(declare-fun tmp_17__Chop_31_start@8 () Bool)
(declare-fun tmp_18__State_32_complete@8 () Bool)
(declare-fun tmp_19__State_32_ok@8 () Bool)
(declare-fun tmp_20__AND_33_start@8 () Bool)
(declare-fun tmp_21__AND_33_complete@8 () Bool)
(declare-fun tmp_23__State_41_complete@8 () Bool)
(declare-fun tmp_24__State_41_ok@8 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@8 () Bool)
(declare-fun time@9 () Real)
(declare-fun tmp_0__AND_1_complete@9 () Bool)
(declare-fun tmp_1__Chop_5_start@9 () Bool)
(declare-fun tmp_2__State_6_complete@9 () Bool)
(declare-fun tmp_3__State_6_ok@9 () Bool)
(declare-fun tmp_4__AND_7_start@9 () Bool)
(declare-fun tmp_5__AND_7_complete@9 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@9 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@9 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@9 () Bool)
(declare-fun tmp_10__Chop_18_start@9 () Bool)
(declare-fun tmp_11__State_19_complete@9 () Bool)
(declare-fun tmp_12__State_19_ok@9 () Bool)
(declare-fun tmp_13__AND_20_start@9 () Bool)
(declare-fun tmp_14__AND_20_complete@9 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@9 () Bool)
(declare-fun tmp_17__Chop_31_start@9 () Bool)
(declare-fun tmp_18__State_32_complete@9 () Bool)
(declare-fun tmp_19__State_32_ok@9 () Bool)
(declare-fun tmp_20__AND_33_start@9 () Bool)
(declare-fun tmp_21__AND_33_complete@9 () Bool)
(declare-fun tmp_23__State_41_complete@9 () Bool)
(declare-fun tmp_24__State_41_ok@9 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@9 () Bool)
(declare-fun time@10 () Real)
(declare-fun tmp_0__AND_1_complete@10 () Bool)
(declare-fun tmp_1__Chop_5_start@10 () Bool)
(declare-fun tmp_2__State_6_complete@10 () Bool)
(declare-fun tmp_3__State_6_ok@10 () Bool)
(declare-fun tmp_4__AND_7_start@10 () Bool)
(declare-fun tmp_5__AND_7_complete@10 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@10 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@10 () Bool)
(declare-fun tmp_9__BoolConstant_14_start@10 () Bool)
(declare-fun tmp_10__Chop_18_start@10 () Bool)
(declare-fun tmp_11__State_19_complete@10 () Bool)
(declare-fun tmp_12__State_19_ok@10 () Bool)
(declare-fun tmp_13__AND_20_start@10 () Bool)
(declare-fun tmp_14__AND_20_complete@10 () Bool)
(declare-fun tmp_16__BoolConstant_27_start@10 () Bool)
(declare-fun tmp_17__Chop_31_start@10 () Bool)
(declare-fun tmp_18__State_32_complete@10 () Bool)
(declare-fun tmp_19__State_32_ok@10 () Bool)
(declare-fun tmp_20__AND_33_start@10 () Bool)
(declare-fun tmp_21__AND_33_complete@10 () Bool)
(declare-fun tmp_23__State_41_complete@10 () Bool)
(declare-fun tmp_24__State_41_ok@10 () Bool)
(declare-fun tmp_25__BoolConstant_42_start@10 () Bool)
(assert
  (bmc_init
    time@0 tmp_0__AND_1_complete@0 tmp_1__Chop_5_start@0 tmp_2__State_6_complete@0 tmp_3__State_6_ok@0
    tmp_4__AND_7_start@0 tmp_5__AND_7_complete@0 tmp_6__StateVar_0____syncb_past@0 tmp_8__StateVar_0____synce_past@0
    tmp_9__BoolConstant_14_start@0 tmp_10__Chop_18_start@0 tmp_11__State_19_complete@0 tmp_12__State_19_ok@0
    tmp_13__AND_20_start@0 tmp_14__AND_20_complete@0 tmp_16__BoolConstant_27_start@0 tmp_17__Chop_31_start@0
    tmp_18__State_32_complete@0 tmp_19__State_32_ok@0 tmp_20__AND_33_start@0 tmp_21__AND_33_complete@0
    tmp_23__State_41_complete@0 tmp_24__State_41_ok@0 tmp_25__BoolConstant_42_start@0))
(assert
  (bmc_step
    time@0 time@1 tmp_0__AND_1_complete@0 tmp_0__AND_1_complete@1 tmp_1__Chop_5_start@0 tmp_1__Chop_5_start@1
    tmp_2__State_6_complete@0 tmp_2__State_6_complete@1 tmp_3__State_6_ok@0 tmp_3__State_6_ok@1 tmp_4__AND_7_start@0
    tmp_4__AND_7_start@1 tmp_5__AND_7_complete@0 tmp_5__AND_7_complete@1 tmp_6__StateVar_0____syncb_past@0
    tmp_6__StateVar_0____syncb_past@1 tmp_8__StateVar_0____synce_past@0 tmp_8__StateVar_0____synce_past@1
    tmp_9__BoolConstant_14_start@0 tmp_9__BoolConstant_14_start@1 tmp_10__Chop_18_start@0 tmp_10__Chop_18_start@1
    tmp_11__State_19_complete@0 tmp_11__State_19_complete@1 tmp_12__State_19_ok@0 tmp_12__State_19_ok@1
    tmp_13__AND_20_start@0 tmp_13__AND_20_start@1 tmp_14__AND_20_complete@0 tmp_14__AND_20_complete@1
    tmp_16__BoolConstant_27_start@0 tmp_16__BoolConstant_27_start@1 tmp_17__Chop_31_start@0 tmp_17__Chop_31_start@1
    tmp_18__State_32_complete@0 tmp_18__State_32_complete@1 tmp_19__State_32_ok@0 tmp_19__State_32_ok@1
    tmp_20__AND_33_start@0 tmp_20__AND_33_start@1 tmp_21__AND_33_complete@0 tmp_21__AND_33_complete@1
    tmp_23__State_41_complete@0 tmp_23__State_41_complete@1 tmp_24__State_41_ok@0 tmp_24__State_41_ok@1
    tmp_25__BoolConstant_42_start@0 tmp_25__BoolConstant_42_start@1))
(assert
  (bmc_step
    time@1 time@2 tmp_0__AND_1_complete@1 tmp_0__AND_1_complete@2 tmp_1__Chop_5_start@1 tmp_1__Chop_5_start@2
    tmp_2__State_6_complete@1 tmp_2__State_6_complete@2 tmp_3__State_6_ok@1 tmp_3__State_6_ok@2 tmp_4__AND_7_start@1
    tmp_4__AND_7_start@2 tmp_5__AND_7_complete@1 tmp_5__AND_7_complete@2 tmp_6__StateVar_0____syncb_past@1
    tmp_6__StateVar_0____syncb_past@2 tmp_8__StateVar_0____synce_past@1 tmp_8__StateVar_0____synce_past@2
    tmp_9__BoolConstant_14_start@1 tmp_9__BoolConstant_14_start@2 tmp_10__Chop_18_start@1 tmp_10__Chop_18_start@2
    tmp_11__State_19_complete@1 tmp_11__State_19_complete@2 tmp_12__State_19_ok@1 tmp_12__State_19_ok@2
    tmp_13__AND_20_start@1 tmp_13__AND_20_start@2 tmp_14__AND_20_complete@1 tmp_14__AND_20_complete@2
    tmp_16__BoolConstant_27_start@1 tmp_16__BoolConstant_27_start@2 tmp_17__Chop_31_start@1 tmp_17__Chop_31_start@2
    tmp_18__State_32_complete@1 tmp_18__State_32_complete@2 tmp_19__State_32_ok@1 tmp_19__State_32_ok@2
    tmp_20__AND_33_start@1 tmp_20__AND_33_start@2 tmp_21__AND_33_complete@1 tmp_21__AND_33_complete@2
    tmp_23__State_41_complete@1 tmp_23__State_41_complete@2 tmp_24__State_41_ok@1 tmp_24__State_41_ok@2
    tmp_25__BoolConstant_42_start@1 tmp_25__BoolConstant_42_start@2))
(assert
  (bmc_step
    time@2 time@3 tmp_0__AND_1_complete@2 tmp_0__AND_1_complete@3 tmp_1__Chop_5_start@2 tmp_1__Chop_5_start@3
    tmp_2__State_6_complete@2 tmp_2__State_6_complete@3 tmp_3__State_6_ok@2 tmp_3__State_6_ok@3 tmp_4__AND_7_start@2
    tmp_4__AND_7_start@3 tmp_5__AND_7_complete@2 tmp_5__AND_7_complete@3 tmp_6__StateVar_0____syncb_past@2
    tmp_6__StateVar_0____syncb_past@3 tmp_8__StateVar_0____synce_past@2 tmp_8__StateVar_0____synce_past@3
    tmp_9__BoolConstant_14_start@2 tmp_9__BoolConstant_14_start@3 tmp_10__Chop_18_start@2 tmp_10__Chop_18_start@3
    tmp_11__State_19_complete@2 tmp_11__State_19_complete@3 tmp_12__State_19_ok@2 tmp_12__State_19_ok@3
    tmp_13__AND_20_start@2 tmp_13__AND_20_start@3 tmp_14__AND_20_complete@2 tmp_14__AND_20_complete@3
    tmp_16__BoolConstant_27_start@2 tmp_16__BoolConstant_27_start@3 tmp_17__Chop_31_start@2 tmp_17__Chop_31_start@3
    tmp_18__State_32_complete@2 tmp_18__State_32_complete@3 tmp_19__State_32_ok@2 tmp_19__State_32_ok@3
    tmp_20__AND_33_start@2 tmp_20__AND_33_start@3 tmp_21__AND_33_complete@2 tmp_21__AND_33_complete@3
    tmp_23__State_41_complete@2 tmp_23__State_41_complete@3 tmp_24__State_41_ok@2 tmp_24__State_41_ok@3
    tmp_25__BoolConstant_42_start@2 tmp_25__BoolConstant_42_start@3))
(assert
  (bmc_step
    time@3 time@4 tmp_0__AND_1_complete@3 tmp_0__AND_1_complete@4 tmp_1__Chop_5_start@3 tmp_1__Chop_5_start@4
    tmp_2__State_6_complete@3 tmp_2__State_6_complete@4 tmp_3__State_6_ok@3 tmp_3__State_6_ok@4 tmp_4__AND_7_start@3
    tmp_4__AND_7_start@4 tmp_5__AND_7_complete@3 tmp_5__AND_7_complete@4 tmp_6__StateVar_0____syncb_past@3
    tmp_6__StateVar_0____syncb_past@4 tmp_8__StateVar_0____synce_past@3 tmp_8__StateVar_0____synce_past@4
    tmp_9__BoolConstant_14_start@3 tmp_9__BoolConstant_14_start@4 tmp_10__Chop_18_start@3 tmp_10__Chop_18_start@4
    tmp_11__State_19_complete@3 tmp_11__State_19_complete@4 tmp_12__State_19_ok@3 tmp_12__State_19_ok@4
    tmp_13__AND_20_start@3 tmp_13__AND_20_start@4 tmp_14__AND_20_complete@3 tmp_14__AND_20_complete@4
    tmp_16__BoolConstant_27_start@3 tmp_16__BoolConstant_27_start@4 tmp_17__Chop_31_start@3 tmp_17__Chop_31_start@4
    tmp_18__State_32_complete@3 tmp_18__State_32_complete@4 tmp_19__State_32_ok@3 tmp_19__State_32_ok@4
    tmp_20__AND_33_start@3 tmp_20__AND_33_start@4 tmp_21__AND_33_complete@3 tmp_21__AND_33_complete@4
    tmp_23__State_41_complete@3 tmp_23__State_41_complete@4 tmp_24__State_41_ok@3 tmp_24__State_41_ok@4
    tmp_25__BoolConstant_42_start@3 tmp_25__BoolConstant_42_start@4))
(assert
  (bmc_step
    time@4 time@5 tmp_0__AND_1_complete@4 tmp_0__AND_1_complete@5 tmp_1__Chop_5_start@4 tmp_1__Chop_5_start@5
    tmp_2__State_6_complete@4 tmp_2__State_6_complete@5 tmp_3__State_6_ok@4 tmp_3__State_6_ok@5 tmp_4__AND_7_start@4
    tmp_4__AND_7_start@5 tmp_5__AND_7_complete@4 tmp_5__AND_7_complete@5 tmp_6__StateVar_0____syncb_past@4
    tmp_6__StateVar_0____syncb_past@5 tmp_8__StateVar_0____synce_past@4 tmp_8__StateVar_0____synce_past@5
    tmp_9__BoolConstant_14_start@4 tmp_9__BoolConstant_14_start@5 tmp_10__Chop_18_start@4 tmp_10__Chop_18_start@5
    tmp_11__State_19_complete@4 tmp_11__State_19_complete@5 tmp_12__State_19_ok@4 tmp_12__State_19_ok@5
    tmp_13__AND_20_start@4 tmp_13__AND_20_start@5 tmp_14__AND_20_complete@4 tmp_14__AND_20_complete@5
    tmp_16__BoolConstant_27_start@4 tmp_16__BoolConstant_27_start@5 tmp_17__Chop_31_start@4 tmp_17__Chop_31_start@5
    tmp_18__State_32_complete@4 tmp_18__State_32_complete@5 tmp_19__State_32_ok@4 tmp_19__State_32_ok@5
    tmp_20__AND_33_start@4 tmp_20__AND_33_start@5 tmp_21__AND_33_complete@4 tmp_21__AND_33_complete@5
    tmp_23__State_41_complete@4 tmp_23__State_41_complete@5 tmp_24__State_41_ok@4 tmp_24__State_41_ok@5
    tmp_25__BoolConstant_42_start@4 tmp_25__BoolConstant_42_start@5))
(assert
  (bmc_step
    time@5 time@6 tmp_0__AND_1_complete@5 tmp_0__AND_1_complete@6 tmp_1__Chop_5_start@5 tmp_1__Chop_5_start@6
    tmp_2__State_6_complete@5 tmp_2__State_6_complete@6 tmp_3__State_6_ok@5 tmp_3__State_6_ok@6 tmp_4__AND_7_start@5
    tmp_4__AND_7_start@6 tmp_5__AND_7_complete@5 tmp_5__AND_7_complete@6 tmp_6__StateVar_0____syncb_past@5
    tmp_6__StateVar_0____syncb_past@6 tmp_8__StateVar_0____synce_past@5 tmp_8__StateVar_0____synce_past@6
    tmp_9__BoolConstant_14_start@5 tmp_9__BoolConstant_14_start@6 tmp_10__Chop_18_start@5 tmp_10__Chop_18_start@6
    tmp_11__State_19_complete@5 tmp_11__State_19_complete@6 tmp_12__State_19_ok@5 tmp_12__State_19_ok@6
    tmp_13__AND_20_start@5 tmp_13__AND_20_start@6 tmp_14__AND_20_complete@5 tmp_14__AND_20_complete@6
    tmp_16__BoolConstant_27_start@5 tmp_16__BoolConstant_27_start@6 tmp_17__Chop_31_start@5 tmp_17__Chop_31_start@6
    tmp_18__State_32_complete@5 tmp_18__State_32_complete@6 tmp_19__State_32_ok@5 tmp_19__State_32_ok@6
    tmp_20__AND_33_start@5 tmp_20__AND_33_start@6 tmp_21__AND_33_complete@5 tmp_21__AND_33_complete@6
    tmp_23__State_41_complete@5 tmp_23__State_41_complete@6 tmp_24__State_41_ok@5 tmp_24__State_41_ok@6
    tmp_25__BoolConstant_42_start@5 tmp_25__BoolConstant_42_start@6))
(assert
  (bmc_step
    time@6 time@7 tmp_0__AND_1_complete@6 tmp_0__AND_1_complete@7 tmp_1__Chop_5_start@6 tmp_1__Chop_5_start@7
    tmp_2__State_6_complete@6 tmp_2__State_6_complete@7 tmp_3__State_6_ok@6 tmp_3__State_6_ok@7 tmp_4__AND_7_start@6
    tmp_4__AND_7_start@7 tmp_5__AND_7_complete@6 tmp_5__AND_7_complete@7 tmp_6__StateVar_0____syncb_past@6
    tmp_6__StateVar_0____syncb_past@7 tmp_8__StateVar_0____synce_past@6 tmp_8__StateVar_0____synce_past@7
    tmp_9__BoolConstant_14_start@6 tmp_9__BoolConstant_14_start@7 tmp_10__Chop_18_start@6 tmp_10__Chop_18_start@7
    tmp_11__State_19_complete@6 tmp_11__State_19_complete@7 tmp_12__State_19_ok@6 tmp_12__State_19_ok@7
    tmp_13__AND_20_start@6 tmp_13__AND_20_start@7 tmp_14__AND_20_complete@6 tmp_14__AND_20_complete@7
    tmp_16__BoolConstant_27_start@6 tmp_16__BoolConstant_27_start@7 tmp_17__Chop_31_start@6 tmp_17__Chop_31_start@7
    tmp_18__State_32_complete@6 tmp_18__State_32_complete@7 tmp_19__State_32_ok@6 tmp_19__State_32_ok@7
    tmp_20__AND_33_start@6 tmp_20__AND_33_start@7 tmp_21__AND_33_complete@6 tmp_21__AND_33_complete@7
    tmp_23__State_41_complete@6 tmp_23__State_41_complete@7 tmp_24__State_41_ok@6 tmp_24__State_41_ok@7
    tmp_25__BoolConstant_42_start@6 tmp_25__BoolConstant_42_start@7))
(assert
  (bmc_step
    time@7 time@8 tmp_0__AND_1_complete@7 tmp_0__AND_1_complete@8 tmp_1__Chop_5_start@7 tmp_1__Chop_5_start@8
    tmp_2__State_6_complete@7 tmp_2__State_6_complete@8 tmp_3__State_6_ok@7 tmp_3__State_6_ok@8 tmp_4__AND_7_start@7
    tmp_4__AND_7_start@8 tmp_5__AND_7_complete@7 tmp_5__AND_7_complete@8 tmp_6__StateVar_0____syncb_past@7
    tmp_6__StateVar_0____syncb_past@8 tmp_8__StateVar_0____synce_past@7 tmp_8__StateVar_0____synce_past@8
    tmp_9__BoolConstant_14_start@7 tmp_9__BoolConstant_14_start@8 tmp_10__Chop_18_start@7 tmp_10__Chop_18_start@8
    tmp_11__State_19_complete@7 tmp_11__State_19_complete@8 tmp_12__State_19_ok@7 tmp_12__State_19_ok@8
    tmp_13__AND_20_start@7 tmp_13__AND_20_start@8 tmp_14__AND_20_complete@7 tmp_14__AND_20_complete@8
    tmp_16__BoolConstant_27_start@7 tmp_16__BoolConstant_27_start@8 tmp_17__Chop_31_start@7 tmp_17__Chop_31_start@8
    tmp_18__State_32_complete@7 tmp_18__State_32_complete@8 tmp_19__State_32_ok@7 tmp_19__State_32_ok@8
    tmp_20__AND_33_start@7 tmp_20__AND_33_start@8 tmp_21__AND_33_complete@7 tmp_21__AND_33_complete@8
    tmp_23__State_41_complete@7 tmp_23__State_41_complete@8 tmp_24__State_41_ok@7 tmp_24__State_41_ok@8
    tmp_25__BoolConstant_42_start@7 tmp_25__BoolConstant_42_start@8))
(assert
  (bmc_step
    time@8 time@9 tmp_0__AND_1_complete@8 tmp_0__AND_1_complete@9 tmp_1__Chop_5_start@8 tmp_1__Chop_5_start@9
    tmp_2__State_6_complete@8 tmp_2__State_6_complete@9 tmp_3__State_6_ok@8 tmp_3__State_6_ok@9 tmp_4__AND_7_start@8
    tmp_4__AND_7_start@9 tmp_5__AND_7_complete@8 tmp_5__AND_7_complete@9 tmp_6__StateVar_0____syncb_past@8
    tmp_6__StateVar_0____syncb_past@9 tmp_8__StateVar_0____synce_past@8 tmp_8__StateVar_0____synce_past@9
    tmp_9__BoolConstant_14_start@8 tmp_9__BoolConstant_14_start@9 tmp_10__Chop_18_start@8 tmp_10__Chop_18_start@9
    tmp_11__State_19_complete@8 tmp_11__State_19_complete@9 tmp_12__State_19_ok@8 tmp_12__State_19_ok@9
    tmp_13__AND_20_start@8 tmp_13__AND_20_start@9 tmp_14__AND_20_complete@8 tmp_14__AND_20_complete@9
    tmp_16__BoolConstant_27_start@8 tmp_16__BoolConstant_27_start@9 tmp_17__Chop_31_start@8 tmp_17__Chop_31_start@9
    tmp_18__State_32_complete@8 tmp_18__State_32_complete@9 tmp_19__State_32_ok@8 tmp_19__State_32_ok@9
    tmp_20__AND_33_start@8 tmp_20__AND_33_start@9 tmp_21__AND_33_complete@8 tmp_21__AND_33_complete@9
    tmp_23__State_41_complete@8 tmp_23__State_41_complete@9 tmp_24__State_41_ok@8 tmp_24__State_41_ok@9
    tmp_25__BoolConstant_42_start@8 tmp_25__BoolConstant_42_start@9))
(assert
  (bmc_step
    time@9 time@10 tmp_0__AND_1_complete@9 tmp_0__AND_1_complete@10 tmp_1__Chop_5_start@9 tmp_1__Chop_5_start@10
    tmp_2__State_6_complete@9 tmp_2__State_6_complete@10 tmp_3__State_6_ok@9 tmp_3__State_6_ok@10 tmp_4__AND_7_start@9
    tmp_4__AND_7_start@10 tmp_5__AND_7_complete@9 tmp_5__AND_7_complete@10 tmp_6__StateVar_0____syncb_past@9
    tmp_6__StateVar_0____syncb_past@10 tmp_8__StateVar_0____synce_past@9 tmp_8__StateVar_0____synce_past@10
    tmp_9__BoolConstant_14_start@9 tmp_9__BoolConstant_14_start@10 tmp_10__Chop_18_start@9 tmp_10__Chop_18_start@10
    tmp_11__State_19_complete@9 tmp_11__State_19_complete@10 tmp_12__State_19_ok@9 tmp_12__State_19_ok@10
    tmp_13__AND_20_start@9 tmp_13__AND_20_start@10 tmp_14__AND_20_complete@9 tmp_14__AND_20_complete@10
    tmp_16__BoolConstant_27_start@9 tmp_16__BoolConstant_27_start@10 tmp_17__Chop_31_start@9 tmp_17__Chop_31_start@10
    tmp_18__State_32_complete@9 tmp_18__State_32_complete@10 tmp_19__State_32_ok@9 tmp_19__State_32_ok@10
    tmp_20__AND_33_start@9 tmp_20__AND_33_start@10 tmp_21__AND_33_complete@9 tmp_21__AND_33_complete@10
    tmp_23__State_41_complete@9 tmp_23__State_41_complete@10 tmp_24__State_41_ok@9 tmp_24__State_41_ok@10
    tmp_25__BoolConstant_42_start@9 tmp_25__BoolConstant_42_start@10))
(assert
  (bmc_target
    time@10 tmp_0__AND_1_complete@10 tmp_1__Chop_5_start@10 tmp_2__State_6_complete@10 tmp_3__State_6_ok@10
    tmp_4__AND_7_start@10 tmp_5__AND_7_complete@10 tmp_6__StateVar_0____syncb_past@10 tmp_8__StateVar_0____synce_past@10
    tmp_9__BoolConstant_14_start@10 tmp_10__Chop_18_start@10 tmp_11__State_19_complete@10 tmp_12__State_19_ok@10
    tmp_13__AND_20_start@10 tmp_14__AND_20_complete@10 tmp_16__BoolConstant_27_start@10 tmp_17__Chop_31_start@10
    tmp_18__State_32_complete@10 tmp_19__State_32_ok@10 tmp_20__AND_33_start@10 tmp_21__AND_33_complete@10
    tmp_23__State_41_complete@10 tmp_24__State_41_ok@10 tmp_25__BoolConstant_42_start@10))

(set-info :status sat)
(check-sat)
