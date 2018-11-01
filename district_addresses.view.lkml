view: district_addresses {
  sql_table_name: dbo.DistrictAddresses ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_ {
    type: string
    sql: ${TABLE}."Country " ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}."School   Location " ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.Street ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
