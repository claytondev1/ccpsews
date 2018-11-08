view: v_vacant_positions_teacher {
  sql_table_name: dbo.vVacantPositionsTeacher ;;

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

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
