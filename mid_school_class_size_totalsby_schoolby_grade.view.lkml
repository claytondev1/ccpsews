view: mid_school_class_size_totalsby_schoolby_grade {
  sql_table_name: dbo.MidSchoolClassSizeTotalsbySchoolbyGrade ;;

  dimension: grade_level {
    type: string
    sql: ${TABLE}."Grade Level" ;;
  }

  dimension: no_of_rosters {
    type: number
    sql: ${TABLE}."NoOf Rosters" ;;
  }

  dimension: no_std_enrolled {
    type: string
    sql: ${TABLE}.NoStdEnrolled ;;
  }

  dimension: percentof_rosters {
    type: number
    sql: ${TABLE}.PercentofRosters ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
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
