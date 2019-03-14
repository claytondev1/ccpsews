view: district_address {
  sql_table_name: dbo.DistrictAddress ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${school_location_} + ${zip} ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

#   dimension: f10 {
#     type: string
#     sql: ${TABLE}.F10 ;;
#   }
#
#   dimension: f11 {
#     type: string
#     sql: ${TABLE}.F11 ;;
#   }
#
#   dimension: f9 {
#     type: string
#     sql: ${TABLE}.F9 ;;
#   }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: geo_location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: sch_code {
    type: string
    sql: ${TABLE}.SchCode ;;
  }

  dimension: school_location_ {
    type: string
    sql: ${TABLE}."SchoolLocation " ;;
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
