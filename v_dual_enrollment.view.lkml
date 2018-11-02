view: v_dual_enrollment {
  sql_table_name: dbo.vDualEnrollment ;;

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.CalendarName ;;
  }

  dimension: course_name {
    type: string
    sql: ${TABLE}.CourseName ;;
  }

  dimension: course_number {
    type: string
    sql: ${TABLE}.CourseNumber ;;
  }

  dimension: enrollment_id {
    type: number
    sql: ${TABLE}.enrollmentID ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: identity_id {
    type: number
    sql: ${TABLE}.identityID ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.studentNumber ;;
  }

  dimension: teacher_display {
    type: string
    sql: ${TABLE}.teacherDisplay ;;
  }

  measure: count {
    type: count
    drill_fields: [calendar_name, lastname, firstname, course_name]
  }
}
