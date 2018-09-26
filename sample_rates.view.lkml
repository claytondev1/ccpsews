view: sample_rates {
  sql_table_name: dbo.SampleRates ;;

  dimension: _of_first_time_9th_graders_in_2015 {
    type: number
    sql: ${TABLE}."# of first time 9th Graders in 2015" ;;
  }

  dimension: current_rate {
    type: number
    sql: ${TABLE}."Current Rate" ;;
  }

  dimension: prior_rate {
    type: number
    sql: ${TABLE}."Prior Rate" ;;
  }

  dimension: projected_rate {
    type: number
    sql: ${TABLE}."Projected Rate" ;;
  }

  dimension: school_name_ {
    type: string
    sql: ${TABLE}."School Name " ;;
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
    drill_fields: []
  }
}
