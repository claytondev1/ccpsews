view: lepservice_type {
  sql_table_name: dbo.LepserviceType ;;

  dimension: bie_code_mapping_id {
    type: number
    sql: ${TABLE}.bieCodeMappingID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: inactive {
    type: string
    sql: ${TABLE}.inactive ;;
  }

  dimension: lep_service_type_guid {
    type: string
    sql: ${TABLE}.lepServiceTypeGUID ;;
  }

  dimension: lep_service_type_id {
    type: number
    sql: ${TABLE}.lepServiceTypeID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: published {
    type: string
    sql: ${TABLE}.published ;;
  }

  dimension: state_code_mapping_id {
    type: number
    sql: ${TABLE}.stateCodeMappingID ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
