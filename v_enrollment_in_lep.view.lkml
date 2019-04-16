view: v_enrollment_in_lep {
  sql_table_name: dbo.vEnrollmentInLEP ;;

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: person_id {
    type: string
    sql: ${TABLE}.personId ;;
  }

  dimension: grade {
    sql: ${TABLE}.grade ;;
  }

  dimension: identified_date {
    type: string
    sql: ${TABLE}.identifiedDate ;;
  }

  dimension: immigrant {
    sql: ${TABLE}.immigrant ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: lepstart_date {
    type: string
    sql: ${TABLE}.LEPStartDate ;;
  }

  dimension: program_status {
    type: string
    sql: ${TABLE}.programStatus ;;
  }

  dimension: schoolid {
    type: number
    value_format_name: id
    sql: ${TABLE}.schoolid ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.studentNumber ;;
  }

  dimension: primary_home_language {
    type: string
    sql: ${TABLE}.HomePrimaryLanguage ;;
  }

  measure: totalenrollment{
    type: count_distinct
    sql: ${student_number} ;;
    label: "#LEP Enrollment"
    drill_fields: [school.name , v_enrollment_in_lep.count ]
  }

  measure: count {
    type: count_distinct
    sql: ${student_number} ;;
    label: "Total Enrollment"
    drill_fields: [student_number, lastname,firstname, grade]
  }
}
