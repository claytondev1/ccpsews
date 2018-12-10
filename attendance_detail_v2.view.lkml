view: attendance_detail {
  sql_table_name: dbo.AttendanceDetailV2 ;;

  dimension: absent_days {
    type: number
    sql: ${TABLE}.absentDays ;;
  }

  dimension: calender_id {
    type: number
    sql: ${TABLE}.CalenderID ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension_group: attendance_issue_date {
    type: time
    timeframes: [date, week, month, year]
    sql:  CONVERT(datetime, ${date}, 120) ;;
  }

  dimension: day_part {
    type: string
    sql: ${TABLE}.dayPart ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.endyear ;;
  }

  dimension: school_code {
    type: string
    sql: ${TABLE}.SchoolCode ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}.SchoolYear ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.StudentNumber ;;
  }

  dimension: un_excused_days {
    type: number
    sql: ${TABLE}.unExcusedDays ;;
  }

  dimension: is_excused {
    type: yesno
    sql: ${un_excused_days} = 0 ;;
  }

  measure: total_un_excused_days {
    type: sum
    sql: ${absent_days} ;;
    value_format_name: decimal_0
    filters: {
      field: is_excused
      value: "no"
    }
    drill_fields: [student_detail*]
  }

  measure: avg_un_excused_days {
    type: average
    sql: ${absent_days} ;;
    value_format_name: decimal_0
    filters: {
      field: is_excused
      value: "no"
    }
    drill_fields: [student_detail*]
  }

  measure: total_absent_days {
    type: sum
    sql: ${absent_days} ;;
    value_format_name: decimal_0
   # drill_fields: [student_detail*]
  }

  measure: avg_absent_days_per_student {
    description: "For students who have been absent, the average number of days absent"
    type: number
    sql: 1.0 * ${total_absent_days} / NULLIF(${individual.count},0) ;;
    value_format_name: decimal_0
   # drill_fields: [student_detail*]
  }

#  dimension: is_at_risk {
 #   type: yesno
#    sql: ${total_absent_days} > 5 ;;
#  }

#  dimension: is_critical {
#    type: yesno
#    sql: ${total_absent_days} > 10 ;;
#  }

  measure: count {
    type: count
    #drill_fields: []
  }

  set: student_detail {
    fields: [student_number, individual.first_name, individual.last_name]
  }





}
