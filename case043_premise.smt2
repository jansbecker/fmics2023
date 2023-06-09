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
(declare-fun tmp_7__ID_11_rel () Bool)
(declare-fun tmp_17__ID_25_rel () Bool)
(define-fun
  bmc_init
  ((time Real)
    (tmp_0__AND_1_complete Bool) (tmp_1__Chop_5_start Bool) (tmp_2__State_6_complete Bool) (tmp_3__State_6_ok Bool)
    (tmp_4__AND_7_start Bool) (tmp_5__AND_7_complete Bool) (tmp_6__StateVar_0____syncb_past Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_9__State_15_complete Bool) (tmp_10__State_15_ok Bool)
    (tmp_11__BoolConstant_16_start Bool) (tmp_12__Chop_20_start Bool) (tmp_13__State_21_complete Bool)
    (tmp_14__State_21_ok Bool) (tmp_15__AND_22_start Bool) (tmp_16__AND_22_complete Bool)
    (tmp_18__BoolConstant_29_start Bool))
  Bool
  (and
    (=> tmp_1__Chop_5_start true) (not tmp_2__State_6_complete) tmp_3__State_6_ok
    (=> tmp_4__AND_7_start tmp_2__State_6_complete)
    (=>
      tmp_7__ID_11_rel
      (and
        (=> tmp_6__StateVar_0____syncb_past tmp_4__AND_7_start) (=> tmp_4__AND_7_start tmp_6__StateVar_0____syncb_past)))
    (not tmp_9__State_15_complete) tmp_10__State_15_ok
    (=
      tmp_5__AND_7_complete
      (and
        tmp_4__AND_7_start
        (and
          (and
            tmp_7__ID_11_rel (and (=> tmp_8__StateVar_0____synce_past true) (=> true tmp_8__StateVar_0____synce_past)))
          tmp_9__State_15_complete)))
    (=> tmp_11__BoolConstant_16_start tmp_5__AND_7_complete) (=> tmp_12__Chop_20_start true)
    (not tmp_13__State_21_complete) tmp_14__State_21_ok (=> tmp_15__AND_22_start tmp_13__State_21_complete)
    (=> tmp_17__ID_25_rel (=> tmp_6__StateVar_0____syncb_past tmp_15__AND_22_start))
    (=
      tmp_16__AND_22_complete
      (and tmp_15__AND_22_start (and tmp_17__ID_25_rel (=> true tmp_8__StateVar_0____synce_past))))
    (=> tmp_18__BoolConstant_29_start tmp_16__AND_22_complete)
    (= tmp_0__AND_1_complete (and true (and tmp_11__BoolConstant_16_start tmp_18__BoolConstant_29_start))) (> time 0.0)))
(define-fun
  bmc_step
  ((time Real)
    (time@ Real) (tmp_0__AND_1_complete Bool) (tmp_0__AND_1_complete@ Bool) (tmp_1__Chop_5_start Bool)
    (tmp_1__Chop_5_start@ Bool) (tmp_2__State_6_complete Bool) (tmp_2__State_6_complete@ Bool) (tmp_3__State_6_ok Bool)
    (tmp_3__State_6_ok@ Bool) (tmp_4__AND_7_start Bool) (tmp_4__AND_7_start@ Bool) (tmp_5__AND_7_complete Bool)
    (tmp_5__AND_7_complete@ Bool) (tmp_6__StateVar_0____syncb_past Bool) (tmp_6__StateVar_0____syncb_past@ Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_8__StateVar_0____synce_past@ Bool) (tmp_9__State_15_complete Bool)
    (tmp_9__State_15_complete@ Bool) (tmp_10__State_15_ok Bool) (tmp_10__State_15_ok@ Bool)
    (tmp_11__BoolConstant_16_start Bool) (tmp_11__BoolConstant_16_start@ Bool) (tmp_12__Chop_20_start Bool)
    (tmp_12__Chop_20_start@ Bool) (tmp_13__State_21_complete Bool) (tmp_13__State_21_complete@ Bool)
    (tmp_14__State_21_ok Bool) (tmp_14__State_21_ok@ Bool) (tmp_15__AND_22_start Bool) (tmp_15__AND_22_start@ Bool)
    (tmp_16__AND_22_complete Bool) (tmp_16__AND_22_complete@ Bool) (tmp_18__BoolConstant_29_start Bool)
    (tmp_18__BoolConstant_29_start@ Bool))
  Bool
  (and
    (=> tmp_1__Chop_5_start tmp_1__Chop_5_start@) (=> tmp_1__Chop_5_start@ (or tmp_1__Chop_5_start true))
    (= tmp_2__State_6_complete@ (and tmp_1__Chop_5_start tmp_3__State_6_ok@))
    (= tmp_3__State_6_ok@ (=> tmp_1__Chop_5_start (and tmp_3__State_6_ok true)))
    (=> tmp_4__AND_7_start tmp_4__AND_7_start@)
    (=> tmp_4__AND_7_start@ (or tmp_4__AND_7_start tmp_2__State_6_complete@))
    (=>
      tmp_7__ID_11_rel
      (and
        (=> tmp_6__StateVar_0____syncb_past@ tmp_4__AND_7_start@)
        (=> tmp_4__AND_7_start@ tmp_6__StateVar_0____syncb_past@)))
    (= tmp_9__State_15_complete@ (and tmp_4__AND_7_start tmp_10__State_15_ok@))
    (= tmp_10__State_15_ok@ (=> tmp_4__AND_7_start (and tmp_10__State_15_ok true)))
    (=
      tmp_5__AND_7_complete@
      (and
        tmp_4__AND_7_start@
        (and
          (and tmp_7__ID_11_rel (and (not tmp_8__StateVar_0____synce_past) tmp_8__StateVar_0____synce_past@))
          tmp_9__State_15_complete@)))
    (=> tmp_11__BoolConstant_16_start tmp_11__BoolConstant_16_start@)
    (=> tmp_11__BoolConstant_16_start@ (or tmp_11__BoolConstant_16_start tmp_5__AND_7_complete@))
    (=> tmp_12__Chop_20_start tmp_12__Chop_20_start@) (=> tmp_12__Chop_20_start@ (or tmp_12__Chop_20_start true))
    (= tmp_13__State_21_complete@ (and tmp_12__Chop_20_start tmp_14__State_21_ok@))
    (= tmp_14__State_21_ok@ (=> tmp_12__Chop_20_start (and tmp_14__State_21_ok true)))
    (=> tmp_15__AND_22_start tmp_15__AND_22_start@)
    (=> tmp_15__AND_22_start@ (or tmp_15__AND_22_start tmp_13__State_21_complete@))
    (=> tmp_17__ID_25_rel (=> tmp_6__StateVar_0____syncb_past@ tmp_15__AND_22_start@))
    (= tmp_16__AND_22_complete@ (and tmp_15__AND_22_start@ (and tmp_17__ID_25_rel tmp_8__StateVar_0____synce_past@)))
    (=> tmp_18__BoolConstant_29_start tmp_18__BoolConstant_29_start@)
    (=> tmp_18__BoolConstant_29_start@ (or tmp_18__BoolConstant_29_start tmp_16__AND_22_complete@))
    (= tmp_0__AND_1_complete@ (and true (and tmp_11__BoolConstant_16_start@ tmp_18__BoolConstant_29_start@)))
    (=> tmp_6__StateVar_0____syncb_past tmp_6__StateVar_0____syncb_past@)
    (=> tmp_8__StateVar_0____synce_past tmp_8__StateVar_0____synce_past@) (< time time@)))
(define-fun
  bmc_target
  ((time Real)
    (tmp_0__AND_1_complete Bool) (tmp_1__Chop_5_start Bool) (tmp_2__State_6_complete Bool) (tmp_3__State_6_ok Bool)
    (tmp_4__AND_7_start Bool) (tmp_5__AND_7_complete Bool) (tmp_6__StateVar_0____syncb_past Bool)
    (tmp_8__StateVar_0____synce_past Bool) (tmp_9__State_15_complete Bool) (tmp_10__State_15_ok Bool)
    (tmp_11__BoolConstant_16_start Bool) (tmp_12__Chop_20_start Bool) (tmp_13__State_21_complete Bool)
    (tmp_14__State_21_ok Bool) (tmp_15__AND_22_start Bool) (tmp_16__AND_22_complete Bool)
    (tmp_18__BoolConstant_29_start Bool))
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
(declare-fun tmp_9__State_15_complete@0 () Bool)
(declare-fun tmp_10__State_15_ok@0 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@0 () Bool)
(declare-fun tmp_12__Chop_20_start@0 () Bool)
(declare-fun tmp_13__State_21_complete@0 () Bool)
(declare-fun tmp_14__State_21_ok@0 () Bool)
(declare-fun tmp_15__AND_22_start@0 () Bool)
(declare-fun tmp_16__AND_22_complete@0 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@0 () Bool)
(declare-fun time@1 () Real)
(declare-fun tmp_0__AND_1_complete@1 () Bool)
(declare-fun tmp_1__Chop_5_start@1 () Bool)
(declare-fun tmp_2__State_6_complete@1 () Bool)
(declare-fun tmp_3__State_6_ok@1 () Bool)
(declare-fun tmp_4__AND_7_start@1 () Bool)
(declare-fun tmp_5__AND_7_complete@1 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@1 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@1 () Bool)
(declare-fun tmp_9__State_15_complete@1 () Bool)
(declare-fun tmp_10__State_15_ok@1 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@1 () Bool)
(declare-fun tmp_12__Chop_20_start@1 () Bool)
(declare-fun tmp_13__State_21_complete@1 () Bool)
(declare-fun tmp_14__State_21_ok@1 () Bool)
(declare-fun tmp_15__AND_22_start@1 () Bool)
(declare-fun tmp_16__AND_22_complete@1 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@1 () Bool)
(declare-fun time@2 () Real)
(declare-fun tmp_0__AND_1_complete@2 () Bool)
(declare-fun tmp_1__Chop_5_start@2 () Bool)
(declare-fun tmp_2__State_6_complete@2 () Bool)
(declare-fun tmp_3__State_6_ok@2 () Bool)
(declare-fun tmp_4__AND_7_start@2 () Bool)
(declare-fun tmp_5__AND_7_complete@2 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@2 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@2 () Bool)
(declare-fun tmp_9__State_15_complete@2 () Bool)
(declare-fun tmp_10__State_15_ok@2 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@2 () Bool)
(declare-fun tmp_12__Chop_20_start@2 () Bool)
(declare-fun tmp_13__State_21_complete@2 () Bool)
(declare-fun tmp_14__State_21_ok@2 () Bool)
(declare-fun tmp_15__AND_22_start@2 () Bool)
(declare-fun tmp_16__AND_22_complete@2 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@2 () Bool)
(declare-fun time@3 () Real)
(declare-fun tmp_0__AND_1_complete@3 () Bool)
(declare-fun tmp_1__Chop_5_start@3 () Bool)
(declare-fun tmp_2__State_6_complete@3 () Bool)
(declare-fun tmp_3__State_6_ok@3 () Bool)
(declare-fun tmp_4__AND_7_start@3 () Bool)
(declare-fun tmp_5__AND_7_complete@3 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@3 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@3 () Bool)
(declare-fun tmp_9__State_15_complete@3 () Bool)
(declare-fun tmp_10__State_15_ok@3 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@3 () Bool)
(declare-fun tmp_12__Chop_20_start@3 () Bool)
(declare-fun tmp_13__State_21_complete@3 () Bool)
(declare-fun tmp_14__State_21_ok@3 () Bool)
(declare-fun tmp_15__AND_22_start@3 () Bool)
(declare-fun tmp_16__AND_22_complete@3 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@3 () Bool)
(declare-fun time@4 () Real)
(declare-fun tmp_0__AND_1_complete@4 () Bool)
(declare-fun tmp_1__Chop_5_start@4 () Bool)
(declare-fun tmp_2__State_6_complete@4 () Bool)
(declare-fun tmp_3__State_6_ok@4 () Bool)
(declare-fun tmp_4__AND_7_start@4 () Bool)
(declare-fun tmp_5__AND_7_complete@4 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@4 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@4 () Bool)
(declare-fun tmp_9__State_15_complete@4 () Bool)
(declare-fun tmp_10__State_15_ok@4 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@4 () Bool)
(declare-fun tmp_12__Chop_20_start@4 () Bool)
(declare-fun tmp_13__State_21_complete@4 () Bool)
(declare-fun tmp_14__State_21_ok@4 () Bool)
(declare-fun tmp_15__AND_22_start@4 () Bool)
(declare-fun tmp_16__AND_22_complete@4 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@4 () Bool)
(declare-fun time@5 () Real)
(declare-fun tmp_0__AND_1_complete@5 () Bool)
(declare-fun tmp_1__Chop_5_start@5 () Bool)
(declare-fun tmp_2__State_6_complete@5 () Bool)
(declare-fun tmp_3__State_6_ok@5 () Bool)
(declare-fun tmp_4__AND_7_start@5 () Bool)
(declare-fun tmp_5__AND_7_complete@5 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@5 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@5 () Bool)
(declare-fun tmp_9__State_15_complete@5 () Bool)
(declare-fun tmp_10__State_15_ok@5 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@5 () Bool)
(declare-fun tmp_12__Chop_20_start@5 () Bool)
(declare-fun tmp_13__State_21_complete@5 () Bool)
(declare-fun tmp_14__State_21_ok@5 () Bool)
(declare-fun tmp_15__AND_22_start@5 () Bool)
(declare-fun tmp_16__AND_22_complete@5 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@5 () Bool)
(declare-fun time@6 () Real)
(declare-fun tmp_0__AND_1_complete@6 () Bool)
(declare-fun tmp_1__Chop_5_start@6 () Bool)
(declare-fun tmp_2__State_6_complete@6 () Bool)
(declare-fun tmp_3__State_6_ok@6 () Bool)
(declare-fun tmp_4__AND_7_start@6 () Bool)
(declare-fun tmp_5__AND_7_complete@6 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@6 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@6 () Bool)
(declare-fun tmp_9__State_15_complete@6 () Bool)
(declare-fun tmp_10__State_15_ok@6 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@6 () Bool)
(declare-fun tmp_12__Chop_20_start@6 () Bool)
(declare-fun tmp_13__State_21_complete@6 () Bool)
(declare-fun tmp_14__State_21_ok@6 () Bool)
(declare-fun tmp_15__AND_22_start@6 () Bool)
(declare-fun tmp_16__AND_22_complete@6 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@6 () Bool)
(declare-fun time@7 () Real)
(declare-fun tmp_0__AND_1_complete@7 () Bool)
(declare-fun tmp_1__Chop_5_start@7 () Bool)
(declare-fun tmp_2__State_6_complete@7 () Bool)
(declare-fun tmp_3__State_6_ok@7 () Bool)
(declare-fun tmp_4__AND_7_start@7 () Bool)
(declare-fun tmp_5__AND_7_complete@7 () Bool)
(declare-fun tmp_6__StateVar_0____syncb_past@7 () Bool)
(declare-fun tmp_8__StateVar_0____synce_past@7 () Bool)
(declare-fun tmp_9__State_15_complete@7 () Bool)
(declare-fun tmp_10__State_15_ok@7 () Bool)
(declare-fun tmp_11__BoolConstant_16_start@7 () Bool)
(declare-fun tmp_12__Chop_20_start@7 () Bool)
(declare-fun tmp_13__State_21_complete@7 () Bool)
(declare-fun tmp_14__State_21_ok@7 () Bool)
(declare-fun tmp_15__AND_22_start@7 () Bool)
(declare-fun tmp_16__AND_22_complete@7 () Bool)
(declare-fun tmp_18__BoolConstant_29_start@7 () Bool)
(assert
  (bmc_init
    time@0 tmp_0__AND_1_complete@0 tmp_1__Chop_5_start@0 tmp_2__State_6_complete@0 tmp_3__State_6_ok@0
    tmp_4__AND_7_start@0 tmp_5__AND_7_complete@0 tmp_6__StateVar_0____syncb_past@0 tmp_8__StateVar_0____synce_past@0
    tmp_9__State_15_complete@0 tmp_10__State_15_ok@0 tmp_11__BoolConstant_16_start@0 tmp_12__Chop_20_start@0
    tmp_13__State_21_complete@0 tmp_14__State_21_ok@0 tmp_15__AND_22_start@0 tmp_16__AND_22_complete@0
    tmp_18__BoolConstant_29_start@0))
(assert
  (bmc_step
    time@0 time@1 tmp_0__AND_1_complete@0 tmp_0__AND_1_complete@1 tmp_1__Chop_5_start@0 tmp_1__Chop_5_start@1
    tmp_2__State_6_complete@0 tmp_2__State_6_complete@1 tmp_3__State_6_ok@0 tmp_3__State_6_ok@1 tmp_4__AND_7_start@0
    tmp_4__AND_7_start@1 tmp_5__AND_7_complete@0 tmp_5__AND_7_complete@1 tmp_6__StateVar_0____syncb_past@0
    tmp_6__StateVar_0____syncb_past@1 tmp_8__StateVar_0____synce_past@0 tmp_8__StateVar_0____synce_past@1
    tmp_9__State_15_complete@0 tmp_9__State_15_complete@1 tmp_10__State_15_ok@0 tmp_10__State_15_ok@1
    tmp_11__BoolConstant_16_start@0 tmp_11__BoolConstant_16_start@1 tmp_12__Chop_20_start@0 tmp_12__Chop_20_start@1
    tmp_13__State_21_complete@0 tmp_13__State_21_complete@1 tmp_14__State_21_ok@0 tmp_14__State_21_ok@1
    tmp_15__AND_22_start@0 tmp_15__AND_22_start@1 tmp_16__AND_22_complete@0 tmp_16__AND_22_complete@1
    tmp_18__BoolConstant_29_start@0 tmp_18__BoolConstant_29_start@1))
(assert
  (bmc_step
    time@1 time@2 tmp_0__AND_1_complete@1 tmp_0__AND_1_complete@2 tmp_1__Chop_5_start@1 tmp_1__Chop_5_start@2
    tmp_2__State_6_complete@1 tmp_2__State_6_complete@2 tmp_3__State_6_ok@1 tmp_3__State_6_ok@2 tmp_4__AND_7_start@1
    tmp_4__AND_7_start@2 tmp_5__AND_7_complete@1 tmp_5__AND_7_complete@2 tmp_6__StateVar_0____syncb_past@1
    tmp_6__StateVar_0____syncb_past@2 tmp_8__StateVar_0____synce_past@1 tmp_8__StateVar_0____synce_past@2
    tmp_9__State_15_complete@1 tmp_9__State_15_complete@2 tmp_10__State_15_ok@1 tmp_10__State_15_ok@2
    tmp_11__BoolConstant_16_start@1 tmp_11__BoolConstant_16_start@2 tmp_12__Chop_20_start@1 tmp_12__Chop_20_start@2
    tmp_13__State_21_complete@1 tmp_13__State_21_complete@2 tmp_14__State_21_ok@1 tmp_14__State_21_ok@2
    tmp_15__AND_22_start@1 tmp_15__AND_22_start@2 tmp_16__AND_22_complete@1 tmp_16__AND_22_complete@2
    tmp_18__BoolConstant_29_start@1 tmp_18__BoolConstant_29_start@2))
(assert
  (bmc_step
    time@2 time@3 tmp_0__AND_1_complete@2 tmp_0__AND_1_complete@3 tmp_1__Chop_5_start@2 tmp_1__Chop_5_start@3
    tmp_2__State_6_complete@2 tmp_2__State_6_complete@3 tmp_3__State_6_ok@2 tmp_3__State_6_ok@3 tmp_4__AND_7_start@2
    tmp_4__AND_7_start@3 tmp_5__AND_7_complete@2 tmp_5__AND_7_complete@3 tmp_6__StateVar_0____syncb_past@2
    tmp_6__StateVar_0____syncb_past@3 tmp_8__StateVar_0____synce_past@2 tmp_8__StateVar_0____synce_past@3
    tmp_9__State_15_complete@2 tmp_9__State_15_complete@3 tmp_10__State_15_ok@2 tmp_10__State_15_ok@3
    tmp_11__BoolConstant_16_start@2 tmp_11__BoolConstant_16_start@3 tmp_12__Chop_20_start@2 tmp_12__Chop_20_start@3
    tmp_13__State_21_complete@2 tmp_13__State_21_complete@3 tmp_14__State_21_ok@2 tmp_14__State_21_ok@3
    tmp_15__AND_22_start@2 tmp_15__AND_22_start@3 tmp_16__AND_22_complete@2 tmp_16__AND_22_complete@3
    tmp_18__BoolConstant_29_start@2 tmp_18__BoolConstant_29_start@3))
(assert
  (bmc_step
    time@3 time@4 tmp_0__AND_1_complete@3 tmp_0__AND_1_complete@4 tmp_1__Chop_5_start@3 tmp_1__Chop_5_start@4
    tmp_2__State_6_complete@3 tmp_2__State_6_complete@4 tmp_3__State_6_ok@3 tmp_3__State_6_ok@4 tmp_4__AND_7_start@3
    tmp_4__AND_7_start@4 tmp_5__AND_7_complete@3 tmp_5__AND_7_complete@4 tmp_6__StateVar_0____syncb_past@3
    tmp_6__StateVar_0____syncb_past@4 tmp_8__StateVar_0____synce_past@3 tmp_8__StateVar_0____synce_past@4
    tmp_9__State_15_complete@3 tmp_9__State_15_complete@4 tmp_10__State_15_ok@3 tmp_10__State_15_ok@4
    tmp_11__BoolConstant_16_start@3 tmp_11__BoolConstant_16_start@4 tmp_12__Chop_20_start@3 tmp_12__Chop_20_start@4
    tmp_13__State_21_complete@3 tmp_13__State_21_complete@4 tmp_14__State_21_ok@3 tmp_14__State_21_ok@4
    tmp_15__AND_22_start@3 tmp_15__AND_22_start@4 tmp_16__AND_22_complete@3 tmp_16__AND_22_complete@4
    tmp_18__BoolConstant_29_start@3 tmp_18__BoolConstant_29_start@4))
(assert
  (bmc_step
    time@4 time@5 tmp_0__AND_1_complete@4 tmp_0__AND_1_complete@5 tmp_1__Chop_5_start@4 tmp_1__Chop_5_start@5
    tmp_2__State_6_complete@4 tmp_2__State_6_complete@5 tmp_3__State_6_ok@4 tmp_3__State_6_ok@5 tmp_4__AND_7_start@4
    tmp_4__AND_7_start@5 tmp_5__AND_7_complete@4 tmp_5__AND_7_complete@5 tmp_6__StateVar_0____syncb_past@4
    tmp_6__StateVar_0____syncb_past@5 tmp_8__StateVar_0____synce_past@4 tmp_8__StateVar_0____synce_past@5
    tmp_9__State_15_complete@4 tmp_9__State_15_complete@5 tmp_10__State_15_ok@4 tmp_10__State_15_ok@5
    tmp_11__BoolConstant_16_start@4 tmp_11__BoolConstant_16_start@5 tmp_12__Chop_20_start@4 tmp_12__Chop_20_start@5
    tmp_13__State_21_complete@4 tmp_13__State_21_complete@5 tmp_14__State_21_ok@4 tmp_14__State_21_ok@5
    tmp_15__AND_22_start@4 tmp_15__AND_22_start@5 tmp_16__AND_22_complete@4 tmp_16__AND_22_complete@5
    tmp_18__BoolConstant_29_start@4 tmp_18__BoolConstant_29_start@5))
(assert
  (bmc_step
    time@5 time@6 tmp_0__AND_1_complete@5 tmp_0__AND_1_complete@6 tmp_1__Chop_5_start@5 tmp_1__Chop_5_start@6
    tmp_2__State_6_complete@5 tmp_2__State_6_complete@6 tmp_3__State_6_ok@5 tmp_3__State_6_ok@6 tmp_4__AND_7_start@5
    tmp_4__AND_7_start@6 tmp_5__AND_7_complete@5 tmp_5__AND_7_complete@6 tmp_6__StateVar_0____syncb_past@5
    tmp_6__StateVar_0____syncb_past@6 tmp_8__StateVar_0____synce_past@5 tmp_8__StateVar_0____synce_past@6
    tmp_9__State_15_complete@5 tmp_9__State_15_complete@6 tmp_10__State_15_ok@5 tmp_10__State_15_ok@6
    tmp_11__BoolConstant_16_start@5 tmp_11__BoolConstant_16_start@6 tmp_12__Chop_20_start@5 tmp_12__Chop_20_start@6
    tmp_13__State_21_complete@5 tmp_13__State_21_complete@6 tmp_14__State_21_ok@5 tmp_14__State_21_ok@6
    tmp_15__AND_22_start@5 tmp_15__AND_22_start@6 tmp_16__AND_22_complete@5 tmp_16__AND_22_complete@6
    tmp_18__BoolConstant_29_start@5 tmp_18__BoolConstant_29_start@6))
(assert
  (bmc_step
    time@6 time@7 tmp_0__AND_1_complete@6 tmp_0__AND_1_complete@7 tmp_1__Chop_5_start@6 tmp_1__Chop_5_start@7
    tmp_2__State_6_complete@6 tmp_2__State_6_complete@7 tmp_3__State_6_ok@6 tmp_3__State_6_ok@7 tmp_4__AND_7_start@6
    tmp_4__AND_7_start@7 tmp_5__AND_7_complete@6 tmp_5__AND_7_complete@7 tmp_6__StateVar_0____syncb_past@6
    tmp_6__StateVar_0____syncb_past@7 tmp_8__StateVar_0____synce_past@6 tmp_8__StateVar_0____synce_past@7
    tmp_9__State_15_complete@6 tmp_9__State_15_complete@7 tmp_10__State_15_ok@6 tmp_10__State_15_ok@7
    tmp_11__BoolConstant_16_start@6 tmp_11__BoolConstant_16_start@7 tmp_12__Chop_20_start@6 tmp_12__Chop_20_start@7
    tmp_13__State_21_complete@6 tmp_13__State_21_complete@7 tmp_14__State_21_ok@6 tmp_14__State_21_ok@7
    tmp_15__AND_22_start@6 tmp_15__AND_22_start@7 tmp_16__AND_22_complete@6 tmp_16__AND_22_complete@7
    tmp_18__BoolConstant_29_start@6 tmp_18__BoolConstant_29_start@7))
(assert
  (bmc_target
    time@7 tmp_0__AND_1_complete@7 tmp_1__Chop_5_start@7 tmp_2__State_6_complete@7 tmp_3__State_6_ok@7
    tmp_4__AND_7_start@7 tmp_5__AND_7_complete@7 tmp_6__StateVar_0____syncb_past@7 tmp_8__StateVar_0____synce_past@7
    tmp_9__State_15_complete@7 tmp_10__State_15_ok@7 tmp_11__BoolConstant_16_start@7 tmp_12__Chop_20_start@7
    tmp_13__State_21_complete@7 tmp_14__State_21_ok@7 tmp_15__AND_22_start@7 tmp_16__AND_22_complete@7
    tmp_18__BoolConstant_29_start@7))

(set-info :status sat)
(check-sat)
