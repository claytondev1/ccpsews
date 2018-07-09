view: behavior_detail {
  sql_table_name: dbo.behaviorDetail ;;

  dimension: end_year {
    type: number
    sql: ${TABLE}.endYear ;;
  }

  dimension: incident_code {
    type: number
    sql: ${TABLE}.incidentCode ;;
  }

  dimension: incident_date {
    type: string
    sql: ${TABLE}.incidentDate ;;
  }

  dimension: incident_type {
    type: string
    sql: ${TABLE}.incidentType ;;
    drill_fields: [resolution_name, school_code, individual.age_tier]
  }

  dimension: resolution_code {
    type: string
    sql: ${TABLE}.resolutionCode ;;
  }

  dimension: resolution_name {
    type: string
    sql: ${TABLE}.resolutionName ;;
    drill_fields: [school_code]
  }

  dimension: school_code {
    type: number
    sql: ${TABLE}.SchoolCode ;;
  }

  dimension: student_number {
    type: number
    sql: ${TABLE}.StudentNumber ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}.behaviorDetailID  ;;
  }

  measure: count {
    label: "# of Incidents"
    type: count_distinct
    sql: ${primary_key} ;;
    drill_fields: [individual.legal_full_name, school_code, incident_type, incident_date ]
  }
}
