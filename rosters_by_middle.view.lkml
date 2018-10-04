view: rosters_by_middle {
  sql_table_name: dbo.RostersByMiddle ;;

  dimension: _rosters {
    type: number
    sql: ${TABLE}."% Rosters" ;;
  }

  dimension: grade_level {
    type: string
    sql: ${TABLE}."Grade Level" ;;
  }

  dimension: noof_rosters {
    type: number
    sql: ${TABLE}.NoofRosters ;;
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
}
