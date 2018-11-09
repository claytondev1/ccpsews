view: location {
  sql_table_name: dbo.Location ;;

  dimension: activity_flg {
    type: string
    sql: ${TABLE}.activity_flg ;;
  }

  dimension: location_abbr {
    type: string
    sql: ${TABLE}.location_abbr ;;
  }

  dimension: location_cd {
    type: string
    sql: ${TABLE}.location_cd ;;
  }

  dimension: location_nm {
    type: string
    sql: ${TABLE}.location_nm ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
