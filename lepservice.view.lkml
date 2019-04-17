view: lepservice {
  sql_table_name: dbo.Lepservice ;;

  dimension: bilingual_ed_hours {
    type: string
    sql: ${TABLE}.bilingualEdHours ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: date_refused {
    type: string
    sql: ${TABLE}.dateRefused ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.endDate ;;
  }

  dimension: exit_reason {
    type: string
    sql: ${TABLE}.exitReason ;;
  }

  dimension: funding2 {
    type: string
    sql: ${TABLE}.funding2 ;;
  }

  dimension: funding3 {
    type: string
    sql: ${TABLE}.funding3 ;;
  }

  dimension: funding4 {
    type: string
    sql: ${TABLE}.funding4 ;;
  }

  dimension: lang_instruct_program {
    type: string
    sql: ${TABLE}.langInstructProgram ;;
  }

  dimension: lep_service_guid {
    type: string
    sql: ${TABLE}.lepServiceGUID ;;
  }

  dimension: lep_service_id {
    type: number
    sql: ${TABLE}.lepServiceID ;;
  }

  dimension: lep_service_type_id {
    type: number
    sql: ${TABLE}.lepServiceTypeID ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: parent_refused_services {
    type: string
    sql: ${TABLE}.parentRefusedServices ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}.schoolID ;;
  }

  dimension: service_minutes {
    type: number
    sql: ${TABLE}.serviceMinutes ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }

  dimension: state_reported {
    type: string
    sql: ${TABLE}.stateReported ;;
  }

  dimension: title_iii {
    type: string
    sql: ${TABLE}.titleIII ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
