view: v_vacant_positions_teacher {
  sql_table_name: dbo.vVacantPositionsTeacher ;;


  dimension: pkey {
    primary_key: yes
    sql: CONCAT(${TABLE}.class, ${TABLE}.site) ;;
    hidden: yes
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
    type: string
    sql: ${TABLE}.site ;;
  }

  measure: count {
    type: count

    label: "Total Positions"
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
