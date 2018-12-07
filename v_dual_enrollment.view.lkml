view: v_dual_enrollment {
  sql_table_name: dbo.vDualEnrollment ;;

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.CalendarName ;;
  }

  dimension: course_name {
    type: string
    label: "Course Name"
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
    label: "First Name"
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: identity_id {
    type: number
    sql: ${TABLE}.identityID ;;
  }

  dimension: lastname {
    label: "Last Name"
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

  dimension: school_id {
    type: string
    sql: ${TABLE}.SchoolID ;;

  }

  measure: student_courses {
    type: count_distinct
    sql: ${student_number} ;;
    label: "Total Enrollment"
    drill_fields: [school.name , v_dual_enrollment.count ]
  }

 measure: count {
   type: count_distinct
   sql: ${student_number} ;;
   drill_fields: [lastname,firstname,course_name]
   }



}
