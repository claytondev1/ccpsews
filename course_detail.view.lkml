view: course_detail {
  sql_table_name: dbo.courseDetail ;;

  dimension: course_name {
    type: string
    sql: ${TABLE}.courseName ;;
  }

  dimension: course_number {
    type: string
    sql: ${TABLE}.CourseNumber ;;
  }

  dimension: course_score {
    type: number
    sql: CASE WHEN ${grade_type} NOT LIKE '%conduct%' AND  ${grade_type} NOT LIKE '%citizenship%' AND ${course_score_raw} NOT IN ('E', 'NC', 'S', 'I', 'NI', 'undefined', 'U', 'P', 'X', 'F', 'N') THEN CAST(${TABLE}.courseScore AS int) ELSE NULL END ;;
  }

  measure: average_course_score {
    type: average
    sql: ${course_score} ;;
    value_format_name: decimal_0
    drill_fields: [student_detail*]
  }

  dimension: course_score_raw {
    type: string
    sql: ${TABLE}.courseScore ;;
  }

  dimension: is_failing {
    type: yesno
    sql: ${course_score} < 70 ;;
  }

  dimension: credits_attempted {
    type: number
    sql: ${TABLE}.creditsAttempted ;;
  }

  dimension: credits_earned {
    type: number
    sql: ${TABLE}.creditsEarned ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.EndYear ;;
  }

  dimension: grade_level {
    type: string
    sql: ${TABLE}.gradeLevel ;;
  }

  dimension: grade_type {
    type: string
    sql: ${TABLE}.gradeType ;;
  }

  dimension: period_name {
    type: string
    sql: ${TABLE}.PeriodName ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.schoolName ;;
  }

  dimension: school_number {
    type: string
    sql: ${TABLE}.schoolNumber ;;
  }

  dimension: section_id {
    type: number
    sql: ${TABLE}.SectionID ;;
  }

  dimension: student_number {
    type: string
    sql: ${TABLE}.StudentNumber ;;
  }

  dimension: teacher_display {
    type: string
    sql: ${TABLE}.teacherDisplay ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}.TeacherID ;;
  }

  dimension: term_name {
    type: string
    sql: ${TABLE}.TermName ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name, course_name, period_name, term_name]
  }

  set: student_detail {
    fields: [individual.first_name, individual.last_name, grade_type, term_name, end_year, course_score ]
  }

}
