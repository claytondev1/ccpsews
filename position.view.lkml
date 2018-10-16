view: position {
  sql_table_name: dbo.Position ;;

  dimension: class {
    type: string
    sql: ${TABLE}.class ;;
  }

  dimension: dept {
    type: string
    sql: ${TABLE}.dept ;;
  }

  dimension: func {
    type: string
    sql: ${TABLE}.func ;;
  }

  dimension: fund {
    type: string
    sql: ${TABLE}.fund ;;
  }

  dimension: obj {
    type: string
    sql: ${TABLE}.obj ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: position_nbr {
    type: string
    sql: ${TABLE}.positionNbr ;;
  }

  dimension: prog {
    type: string
    sql: ${TABLE}.prog ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sub_obj {
    type: string
    sql: ${TABLE}.subObj ;;
  }

  dimension: travel_allotment {
    type: number
    sql: ${TABLE}.travelAllotment ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: unique_position {
    type: count_distinct
    sql: ${position_nbr} ;;
    value_format_name: decimal_0

  }
}
