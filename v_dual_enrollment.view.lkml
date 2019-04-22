view: v_dual_enrollment {
  sql_table_name: dbo.vDualEnrollment ;;

  dimension: first_name {
    type: string
    label: "First Name"
    sql: ${TABLE}.firstName ;;

  }

  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}.schoolID ;;
  }

  dimension: student_number {
    primary_key: yes
    type: string
    sql: ${TABLE}.studentNumber ;;
  }

  measure: count_dual_enrollment {
    description: "Drill to the school number"
    type: count_distinct
    sql: ${student_number} ;;
    drill_fields: [school.name , v_dual_enrollment.count_dual_enrollment_2 ]
  }

  measure: count_dual_enrollment_2 {
    hidden: yes
    description: "Drill to the student"
    type: count_distinct
    sql: ${student_number} ;;
    drill_fields: [drill_to_student*]
  }

  set: drill_to_student {
    fields: [
      v_dual_enrollment.student_number
      , v_dual_enrollment.first_name
      , v_dual_enrollment.last_name
      , identity.home_primary_language
      , enrollment.grade
    ]
  }


}
