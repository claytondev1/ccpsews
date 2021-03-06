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

  measure: totalenrollment{
    type: count_distinct
    sql: ${studentnumber};;
    label: "#Foreign Language"
    drill_fields: [school.name, count]
}
  measure: count {
    type: count_distinct
    sql: ${studentnumber};;
    label: "Total Enrollment"
    drill_fields: [last_name,first_name]
  }



}
