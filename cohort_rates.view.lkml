view: cohort_rates {
  sql_table_name: dbo.CohortRates ;;

  dimension: 4yr_rate {
    type: number
    sql: ${TABLE}."4yr Rate" ;;
  }

  dimension: _of_first_time_9th_graders_in_2015 {
    type: number
    sql: ${TABLE}."# of first time 9th Graders in 2015" ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}."SCHOOL NAME" ;;
  }

  dimension: total_cohort_members {
    type: number
    sql: ${TABLE}."Total Cohort Members" ;;
  }

  dimension: total_graduates {
    type: number
    sql: ${TABLE}."Total Graduates" ;;
  }

  dimension: transfer_ins {
    type: number
    sql: ${TABLE}."Transfer Ins" ;;
  }

  dimension: transfer_outs {
    type: number
    sql: ${TABLE}."Transfer Outs" ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name]
  }
}
