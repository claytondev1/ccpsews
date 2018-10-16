view: v_vacant_positions {
  sql_table_name: dbo.vVacantPositions ;;

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: class_title {
    type: string
    sql: ${TABLE}.classTitle ;;
  }

  dimension: dept {
    type: string
    sql: ${TABLE}.dept ;;
  }

  dimension: position_nbr {
    type: string
    sql: ${TABLE}.positionNbr ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
