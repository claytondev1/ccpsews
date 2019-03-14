view: gmas_eog_final {
  sql_table_name: dbo.GMASEOGFinal ;;

  dimension: achlevel_ela {
    type: string
    sql: ${TABLE}.ACHLevel_ELA ;;
  }

  dimension: achlevel_math {
    type: string
    sql: ${TABLE}.ACHLevel_Math ;;
  }

  dimension: achlevel_sci {
    type: string
    sql: ${TABLE}.ACHLevel_Sci ;;
  }

  dimension: achlevel_soc {
    type: string
    sql: ${TABLE}.ACHLevel_Soc ;;
  }

  dimension: cond_sem_ela {
    type: string
    sql: ${TABLE}.CondSEM_ELA ;;
  }

  dimension: cond_sem_math {
    type: string
    sql: ${TABLE}.CondSEM_Math ;;
  }

  dimension: cond_sem_sci {
    type: string
    sql: ${TABLE}.CondSEM_Sci ;;
  }

  dimension: cond_sem_soc {
    type: string
    sql: ${TABLE}.CondSEM_Soc ;;
  }

  dimension: cond_semhigh_ela {
    type: string
    sql: ${TABLE}.CondSEMHigh_ELA ;;
  }

  dimension: cond_semhigh_math {
    type: string
    sql: ${TABLE}.CondSEMHigh_Math ;;
  }

  dimension: cond_semhigh_sci {
    type: string
    sql: ${TABLE}.CondSEMHigh_Sci ;;
  }

  dimension: cond_semhigh_soc {
    type: string
    sql: ${TABLE}.CondSEMHigh_Soc ;;
  }

  dimension: cond_semlow_ela {
    type: string
    sql: ${TABLE}.CondSEMLow_ELA ;;
  }

  dimension: cond_semlow_math {
    type: string
    sql: ${TABLE}.CondSEMLow_Math ;;
  }

  dimension: cond_semlow_sci {
    type: string
    sql: ${TABLE}.CondSEMLow_Sci ;;
  }

  dimension: cond_semlow_soc {
    type: string
    sql: ${TABLE}.CondSEMLow_Soc ;;
  }

  dimension: ethnicity_race {
    type: number
    sql: ${TABLE}.EthnicityRace ;;
  }

  dimension: extwrt1_cond_code {
    type: string
    sql: ${TABLE}.EXTWRT1CondCode ;;
  }

  dimension: extwrt1_score {
    type: string
    sql: ${TABLE}.EXTWRT1Score ;;
  }

  dimension: extwrt2_cond_code {
    type: string
    sql: ${TABLE}.EXTWRT2CondCode ;;
  }

  dimension: extwrt2_score {
    type: string
    sql: ${TABLE}.EXTWRT2Score ;;
  }

  dimension: extwrtgenre {
    type: string
    sql: ${TABLE}.EXTWRTGenre ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.Filler ;;
  }

  dimension: lexile {
    type: string
    sql: ${TABLE}.Lexile ;;
  }

  dimension: lexile_high {
    type: string
    sql: ${TABLE}.LexileHigh ;;
  }

  dimension: lexile_l {
    type: string
    sql: ${TABLE}.LexileL ;;
  }

  dimension: lexile_low {
    type: string
    sql: ${TABLE}.LexileLow ;;
  }

  dimension: mastery_category_dom1_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_ELA ;;
  }

  dimension: mastery_category_dom1_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Math ;;
  }

  dimension: mastery_category_dom1_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Sci ;;
  }

  dimension: mastery_category_dom1_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Soc ;;
  }

  dimension: mastery_category_dom2_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_ELA ;;
  }

  dimension: mastery_category_dom2_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Math ;;
  }

  dimension: mastery_category_dom2_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Sci ;;
  }

  dimension: mastery_category_dom2_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Soc ;;
  }

  dimension: mastery_category_dom3_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Math ;;
  }

  dimension: mastery_category_dom3_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Sci ;;
  }

  dimension: mastery_category_dom3_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Soc ;;
  }

  dimension: mastery_category_dom4_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Math ;;
  }

  dimension: mastery_category_dom4_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Sci ;;
  }

  dimension: mastery_category_dom4_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Soc ;;
  }

  dimension: mastery_category_dom5_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Math ;;
  }

  dimension: mastery_category_dom5_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Sci ;;
  }

  dimension: mastery_category_dom5_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Soc ;;
  }

  dimension: mastery_category_dom6_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Math ;;
  }

  dimension: mastery_category_dom6_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Sci ;;
  }

  dimension: mastery_category_dom6_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Soc ;;
  }

  dimension: mastery_category_dom7_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Math ;;
  }

  dimension: mastery_category_dom7_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Sci ;;
  }

  dimension: mastery_category_dom7_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Soc ;;
  }

  dimension: mastery_category_dom8_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_ELA ;;
  }

  dimension: mastery_category_dom8_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Math ;;
  }

  dimension: mastery_category_dom8_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Sci ;;
  }

  dimension: mastery_category_dom8_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Soc ;;
  }

  dimension: narrwrtcond_code {
    type: string
    sql: ${TABLE}.NARRWRTCondCode ;;
  }

  dimension: narrwrtscore {
    type: string
    sql: ${TABLE}.NARRWRTScore ;;
  }

  dimension: nrt_nce_ela {
    type: string
    sql: ${TABLE}.NRT_NCE_ELA ;;
  }

  dimension: nrt_nce_math {
    type: string
    sql: ${TABLE}.NRT_NCE_Math ;;
  }

  dimension: nrt_nce_sci {
    type: string
    sql: ${TABLE}.NRT_NCE_Sci ;;
  }

  dimension: nrt_nce_soc {
    type: string
    sql: ${TABLE}.NRT_NCE_Soc ;;
  }

  dimension: nrt_np_ela {
    type: string
    sql: ${TABLE}.NRT_NP_ELA ;;
  }

  dimension: nrt_np_math {
    type: string
    sql: ${TABLE}.NRT_NP_Math ;;
  }

  dimension: nrt_np_sci {
    type: string
    sql: ${TABLE}.NRT_NP_Sci ;;
  }

  dimension: nrt_np_soc {
    type: string
    sql: ${TABLE}.NRT_NP_Soc ;;
  }

  dimension: nrt_nprange_ela {
    type: string
    sql: ${TABLE}.NRT_NPRange_ELA ;;
  }

  dimension: nrt_nprange_math {
    type: string
    sql: ${TABLE}.NRT_NPRange_Math ;;
  }

  dimension: nrt_nprange_sci {
    type: string
    sql: ${TABLE}.NRT_NPRange_Sci ;;
  }

  dimension: nrt_nprange_soc {
    type: string
    sql: ${TABLE}.NRT_NPRange_Soc ;;
  }

  dimension: reading_status {
    type: string
    sql: ${TABLE}.ReadingStatus ;;
  }

  dimension: sch_add {
    type: string
    sql: ${TABLE}.SchAdd ;;
  }

  dimension: sch_code {
    type: string
    sql: ${TABLE}.SchCode ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: ss_ela {
    type: string
    sql: ${TABLE}.SS_ELA ;;
  }

  dimension: ss_math {
    type: string
    sql: ${TABLE}.SS_Math ;;
  }

  dimension: ss_sci {
    type: string
    sql: ${TABLE}.SS_Sci ;;
  }

  dimension: ss_soc {
    type: string
    sql: ${TABLE}.SS_Soc ;;
  }

  dimension: stretch_band {
    type: string
    sql: ${TABLE}.StretchBand ;;
  }

  dimension: stu_gender {
    type: string
    sql: ${TABLE}.StuGender ;;
  }

  dimension: sys_code {
    type: number
    sql: ${TABLE}.SysCode ;;
  }

  dimension: sys_name {
    type: string
    sql: ${TABLE}.SysName ;;
  }

  dimension: test_admin {
    type: string
    sql: ${TABLE}.TestAdmin ;;
  }

  dimension: tested_grade {
    type: string
    sql: ${TABLE}.TestedGrade ;;
  }

  measure: count {
    type: count
    drill_fields: [sys_name, sch_name]
  }
}
