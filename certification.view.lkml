view: certification {
  sql_table_name: dbo.Certification ;;

  dimension: cert_field {
    type: string
    sql: ${TABLE}.certField ;;
  }

  dimension: cert_level {
    type: string
    sql: ${TABLE}.certLevel ;;
  }

  dimension: cert_type {
    type: string
    sql: ${TABLE}.certType ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.effectiveDate ;;
  }

  dimension: emp_nbr {
    type: number
    sql: ${TABLE}.empNbr ;;
  }

  dimension: expiration_date {
    type: string
    sql: ${TABLE}.expirationDate ;;
  }

  dimension: pay_cert_field {
    type: string
    sql: ${TABLE}.payCertField ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
