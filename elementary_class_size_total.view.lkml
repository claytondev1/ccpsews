view: elementary_class_size_total {
  sql_table_name: dbo.ElementaryClassSizeTotal ;;

  dimension: _of_rosters {
    type: number
    sql: ${TABLE}."# of Rosters" ;;
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
