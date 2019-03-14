

view: gmas_eoc_final {
  sql_table_name: dbo.GMASEocFinal ;;

  dimension: achlevel {
    type: number
    sql: ${TABLE}.ACHLevel ;;
  }

  dimension: cond_sem {
    type: number
    sql: ${TABLE}.CondSEM ;;
  }

  dimension: cond_semhigh {
    type: number
    sql: ${TABLE}.CondSEMHigh ;;
  }

  dimension: cond_semlow {
    type: number
    sql: ${TABLE}.CondSEMLow ;;
  }

  dimension: content_area {
    type: string
    sql: ${TABLE}.ContentArea ;;
  }

  dimension: course_num_preid {
    type: string
    sql: ${TABLE}.CourseNum_PREID ;;
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
    type: number
    sql: ${TABLE}.EXTWRT1Score ;;
  }

  dimension: extwrt2_cond_code {
    type: string
    sql: ${TABLE}.EXTWRT2CondCode ;;
  }

  dimension: extwrt2_score {
    type: number
    sql: ${TABLE}.EXTWRT2Score ;;
  }

  dimension: extwrtgenre {
    type: number
    sql: ${TABLE}.EXTWRTGenre ;;
  }

  dimension: gcs {
    type: number
    sql: ${TABLE}.GCS ;;
  }

  dimension: lexile {
    type: number
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

  dimension: mastery_category_dom1 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom1 ;;
  }

  dimension: mastery_category_dom2 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom2 ;;
  }

  dimension: mastery_category_dom3 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom3 ;;
  }

  dimension: mastery_category_dom4 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom4 ;;
  }

  dimension: mastery_category_dom5 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom5 ;;
  }

  dimension: mastery_category_dom6 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom6 ;;
  }

  dimension: mastery_category_dom7 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom7 ;;
  }

  dimension: mastery_category_dom8 {
    type: number
    sql: ${TABLE}.MasteryCategoryDom8 ;;
  }

  dimension: narrwrtcond_code {
    type: string
    sql: ${TABLE}.NARRWRTCondCode ;;
  }

  dimension: narrwrtscore {
    type: number
    sql: ${TABLE}.NARRWRTScore ;;
  }

  dimension: nrt_nce {
    type: number
    sql: ${TABLE}.NRT_NCE ;;
  }

  dimension: nrt_np {
    type: number
    sql: ${TABLE}.NRT_NP ;;
  }

  dimension: nrt_nprange {
    type: string
    sql: ${TABLE}.NRT_NPRange ;;
  }

  dimension: reading_status {
    type: number
    sql: ${TABLE}.ReadingStatus ;;
  }

  dimension: sch_code {
    type: string
    sql: ${TABLE}.SchCode ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: ss {
    type: number
    sql: ${TABLE}.SS ;;
  }

  dimension: stretch_band {
    type: number
    sql: ${TABLE}.StretchBand ;;
  }

  dimension: stu_gender {
    type: string
    sql: ${TABLE}.StuGender ;;
  }

  dimension: stu_grade {
    type: string
    sql: ${TABLE}.StuGrade ;;
  }

  dimension: sys_name {
    type: string
    sql: ${TABLE}.SysName ;;
  }

  dimension: test_admin {
    type: string
    sql: ${TABLE}.TestAdmin ;;
  }

  measure: count {
    type: count
    drill_fields: [sys_name, sch_name]
  }
}
