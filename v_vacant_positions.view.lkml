view: vacant_positions {
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

  dimension: site {
    type: number
    sql: ${TABLE}.site ;;
  }

  measure: count {
    type: count
    drill_fields: [site_count*]
  }

  set: site_count {
    fields: [ location.location_nm ]
  }
}
