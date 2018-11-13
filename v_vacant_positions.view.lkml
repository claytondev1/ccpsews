view: vacant_positions {
#   sql_table_name: dbo.vVacantPositions ;;
derived_table: {
  sql:
        select row_number() over (order by classtitle) as pk
          ,*
        from dbo.vVacantPositions
    ;;
}

dimension: pk {
  primary_key: yes
  hidden: yes
  sql: ${TABLE}.pk ;;
}

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
    type: count_distinct
    sql: ${position_nbr}  ;;
    value_format_name: decimal_0
    drill_fields: []
  }

  measure: unique_position {
    type: count_distinct
    sql: ${position_nbr} ;;
    value_format_name: decimal_0
    drill_fields: [site_count*]
  }

  set: site_count {
    fields: [ location.location_nm , count]
  }

}
