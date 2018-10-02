view: msct {
  sql_table_name: dbo.MSCT ;;

  dimension: grade_level {
    type: number
    sql: ${TABLE}."Grade Level" ;;
  }

  dimension: number_of_students_enrolled_ {
    type: number
    sql: ${TABLE}."Number of Students Enrolled " ;;
  }

  dimension: percentage_of_total_rosters_per_grade_level {
    type: number
    sql: ${TABLE}."Percentage of Total Rosters per Grade Level" ;;
  }

  dimension: sum_of_rosters {
    type: number
    sql: ${TABLE}."Sum of Rosters" ;;
  }

  measure: count {
    type: count
    drill_fields: [grade_level]
  }
}
