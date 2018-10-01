view: high_school_class_size_totalby_schoolby_grade {
  sql_table_name: dbo.HighSchoolClassSizeTotalbySchoolbyGrade ;;

  dimension: number_of_rosters {
    type: number
    sql: ${TABLE}."# of Rosters" ;;
  }

  dimension: percentage_of_rosters {
    type: number
    sql: ${TABLE}."% of Rosters" ;;
  }

  dimension: number_std_enrolled {
    type: string
    sql: ${TABLE}."# Std_Enrolled" ;;
  }

  dimension: school {
    type: string
    sql: ${TABLE}.School ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
