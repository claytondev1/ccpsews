view: esstud_countper_rosterby_teacher {
  sql_table_name: dbo.ESStudCountperRosterbyTeacher ;;

  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
  }

  dimension: course_num {
    type: number
    sql: ${TABLE}.course_num ;;
  }

  dimension: period_num {
    type: number
    sql: ${TABLE}.period_num ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.schoolName ;;
  }

  dimension: section_id {
    type: number
    sql: ${TABLE}.sectionID ;;
  }

  dimension: section_num {
    type: number
    sql: ${TABLE}.section_num ;;
  }

  dimension: students {
    type: number
    sql: ${TABLE}.Students ;;
  }

  dimension: teacher_first_name {
    type: string
    sql: ${TABLE}.teacherFirstName ;;
  }

  dimension: teacher_last_name {
    type: string
    sql: ${TABLE}.teacherLastName ;;
  }

  dimension: teacher_person_id {
    type: number
    sql: ${TABLE}.teacherPersonID ;;
  }

  dimension_group: term_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.term_end ;;
  }

  dimension: term_num {
    type: string
    sql: ${TABLE}.term_num ;;
  }

  dimension_group: term_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.term_start ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name, teacher_last_name, teacher_first_name, course_name]
  }
}
