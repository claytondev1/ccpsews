view: mid_school_class_size_totalsby_schoolby_grade {
  sql_table_name: dbo.MidSchoolClassSizeTotalsbySchoolbyGrade ;;

  dimension: _of_rosters {
    type: number
    sql: ${TABLE}."# of Rosters" ;;
  }

  dimension: %_of_rosters {
    type: number
    sql: ${TABLE}."% of Rosters" ;;
  }

  dimension: _std_enrolled {
    type: string
    sql: ${TABLE}."# Std_Enrolled" ;;
  }

  dimension: grade_level {
    type: string
    sql: ${TABLE}."Grade Level" ;;
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
