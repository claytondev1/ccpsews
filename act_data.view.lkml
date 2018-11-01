view: act_data {
  derived_table: {
    sql: select row_number() over (order by school_code) as pk
      ,*
    from dbo.ACTData
    ;;
  }


  dimension: pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pk;;
  }

  dimension: school_code {
    type: number
    hidden: no
    sql: ${TABLE}.school_code ;;
  }


  dimension: dstrct_avg_score_val {
    type: number
    sql: ${TABLE}.DSTRCT_AVG_SCORE_VAL ;;
  }

  dimension: dstrct_num_tested_cnt {
    type: number
    sql: ${TABLE}.DSTRCT_NUM_TESTED_CNT ;;
  }

  dimension: instn_avg_score_val {
    type: number
    sql: ${TABLE}.INSTN_AVG_SCORE_VAL ;;
  }

  dimension: instn_name {
    type: string
    sql: ${TABLE}.INSTN_NAME ;;
  }

  dimension: instn_num_tested_cnt {
    type: number
    sql: ${TABLE}.INSTN_NUM_TESTED_CNT ;;
  }

  dimension: instn_number {
    type: number
    sql: ${TABLE}.INSTN_NUMBER ;;
  }

  dimension: national_avg_score_val {
    type: number
    sql: ${TABLE}.NATIONAL_AVG_SCORE_VAL ;;
  }

  dimension: national_num_tested_cnt {
    type: string
    sql: ${TABLE}.NATIONAL_NUM_TESTED_CNT ;;
  }

  dimension: school_distrct_cd {
    type: number
    sql: ${TABLE}.SCHOOL_DISTRCT_CD ;;
  }

  dimension: school_dstrct_nm {
    type: string
    sql: ${TABLE}.SCHOOL_DSTRCT_NM ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: state_avg_score_val {
    type: number
    sql: ${TABLE}.STATE_AVG_SCORE_VAL ;;
  }

  dimension: state_num_tested_cnt {
    type: number
    sql: ${TABLE}.STATE_NUM_TESTED_CNT ;;
  }

  dimension: subgrp_desc {
    type: string
    sql: ${TABLE}.SUBGRP_DESC ;;
  }

  dimension: test_cmpnt_typ_cd {
    type: string
    sql: ${TABLE}.TEST_CMPNT_TYP_CD ;;
  }

  measure: count {
    type: count
    drill_fields: [instn_name]
  }

  measure: avg_score_institution {
    label: "Average Institution ACT Score"
    type: average
    sql: ${instn_avg_score_val} ;;
    value_format_name: decimal_2
  }



}
