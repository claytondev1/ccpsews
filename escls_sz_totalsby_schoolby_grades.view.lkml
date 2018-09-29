view: escls_sz_totalsby_schoolby_grades {
  sql_table_name: dbo.ESClsSzTotalsbySchoolby Grades ;;

  dimension: grade_level {
    type: string
    sql: ${TABLE}."Grade Level" ;;
  }

  dimension: noof_rosters {
    type: number
    sql: ${TABLE}.NoofRosters ;;
  }

  dimension: rosters {
    type: number
    sql: ${TABLE}."%Rosters" ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  dimension: std_enrolled {
    type: string
    sql: ${TABLE}.Std_Enrolled ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
