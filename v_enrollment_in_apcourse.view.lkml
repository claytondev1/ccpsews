view: v_enrollment_in_apcourse {
  sql_table_name: dbo.vEnrollmentInAPCourse ;;

  dimension: course_name {
    type: string
    sql: ${TABLE}.CourseName ;;
  }

  dimension: course_number {
    type: string
    sql: ${TABLE}.CourseNumber ;;
  }

dimension: school_id {
  type: string
  sql: ${TABLE}.SchoolID ;;

}
  dimension: enrollment_id {
    type: number
    sql: ${TABLE}.enrollmentID ;;
  }

  dimension: firstname {
    type: string
    label: "First Name"
    sql: ${TABLE}.firstname ;;
  }

  dimension: identity_id {
    type: number
    sql: ${TABLE}.identityID ;;
  }

  dimension: lastname {
    type: string
    label: "Last Name"
    sql: ${TABLE}.lastname ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  measure: student_courses {
    type: count_distinct
    sql: ${student_number} ;;
    label: "Total Enrollment"
    drill_fields: [school.name , count ]
  }
  measure: count {
    type: count_distinct
    sql: ${student_number} ;;
    drill_fields: [lastname,firstname,course_name]

  }

}
