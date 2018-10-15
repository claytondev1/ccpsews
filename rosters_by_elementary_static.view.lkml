view: rosters_by_elementary_static {
  sql_table_name: dbo.RostersByElementary ;;

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
    type: number
    sql: ${TABLE}.Std_Enrolled ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_of_rosters {
    type: sum
    sql: ${noof_rosters} ;;
  }

}
