view: mid_school_class_size_totalsby_schoolby_grade {
  sql_table_name: dbo.MidSchoolClassSizeTotalsbySchoolbyGrade ;;

  dimension: grade_level {
    type: string
    sql: ${TABLE}."Grade Level" ;;
  }

  dimension: no_of_rosters {
    type: number
    sql: ${TABLE}."NoofRosters" ;;
  }

  dimension: rosters {
    type: number
    sql: ${TABLE}.NoStdEnrolled ;;
  }


  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  dimension: std_enrolled {
    type: number
    sql: ${TABLE}.Std_Enrolled ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_rosters {
    type:  sum
    sql: ${no_of_rosters} ;;
  }
}
