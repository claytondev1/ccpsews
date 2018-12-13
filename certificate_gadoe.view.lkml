view: certificate_gadoe {
  sql_table_name: dbo.CertificateGADOE ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cert_name {
    type: string
    sql: ${TABLE}.CertName ;;
  }

  dimension: cert_type {
    type: string
    sql: ${TABLE}.certType ;;
  }

  measure: count {
    type: count
    drill_fields: [id, cert_name]
  }
}
