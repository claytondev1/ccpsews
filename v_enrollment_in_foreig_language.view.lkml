view: v_enrollment_in_foreig_language {
  sql_table_name: dbo.vEnrollmentInForeigLanguage ;;

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}.schoolID ;;
  }

  dimension: studentnumber {
    type: string
    sql: ${TABLE}.studentnumber ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}