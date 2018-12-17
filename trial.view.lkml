view: trial {
  sql_table_name: dbo.Trial ;;

  dimension: trial_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.trialID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension: auto_assign {
    type: string
    sql: ${TABLE}.autoAssign ;;
  }

  dimension: auto_create {
    type: number
    sql: ${TABLE}.autoCreate ;;
  }

  dimension: auto_depth {
    type: number
    sql: ${TABLE}.autoDepth ;;
  }

  dimension: auto_fix {
    type: string
    sql: ${TABLE}.autoFix ;;
  }

  dimension: auto_move {
    type: number
    sql: ${TABLE}.autoMove ;;
  }

  dimension: build_depth {
    type: number
    sql: ${TABLE}.buildDepth ;;
  }

  dimension: calendar_id {
    type: number
    sql: ${TABLE}.calendarID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: conflict_room {
    type: string
    sql: ${TABLE}.conflictRoom ;;
  }

  dimension: conflict_roster {
    type: string
    sql: ${TABLE}.conflictRoster ;;
  }

  dimension: conflict_singleton {
    type: string
    sql: ${TABLE}.conflictSingleton ;;
  }

  dimension: conflict_student_to_student {
    type: string
    sql: ${TABLE}.conflictStudentToStudent ;;
  }

  dimension: conflict_teacher {
    type: string
    sql: ${TABLE}.conflictTeacher ;;
  }

  dimension: default_course_priority {
    type: number
    sql: ${TABLE}.defaultCoursePriority ;;
  }

  dimension: discipline_balance_weight {
    type: number
    sql: ${TABLE}.disciplineBalanceWeight ;;
  }

  dimension: full_depth {
    type: number
    sql: ${TABLE}.fullDepth ;;
  }

  dimension: gender_balance_weight {
    type: number
    sql: ${TABLE}.genderBalanceWeight ;;
  }

  dimension: grid_display {
    type: number
    sql: ${TABLE}.gridDisplay ;;
  }

  dimension: highlight_empty {
    type: string
    sql: ${TABLE}.highlightEmpty ;;
  }

  dimension: highlight_full {
    type: string
    sql: ${TABLE}.highlightFull ;;
  }

  dimension: highlight_locked {
    type: string
    sql: ${TABLE}.highlightLocked ;;
  }

  dimension: highlight_seats {
    type: string
    sql: ${TABLE}.highlightSeats ;;
  }

  dimension: highlight_singleton {
    type: string
    sql: ${TABLE}.highlightSingleton ;;
  }

  dimension: legacy_key {
    type: number
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legacy_key_sc {
    type: number
    sql: ${TABLE}.legacyKeySC ;;
  }

  dimension: legacy_key_scparent_id {
    type: number
    sql: ${TABLE}.legacyKeySCParentID ;;
  }

  dimension: locked {
    type: string
    sql: ${TABLE}.locked ;;
  }

  dimension: locked_by_id {
    type: number
    sql: ${TABLE}.lockedByID ;;
  }

  dimension: locked_timestamp {
    type: string
    sql: ${TABLE}.lockedTimestamp ;;
  }

  dimension: min_class_percent {
    type: number
    sql: ${TABLE}.minClassPercent ;;
  }

  dimension: minority_balance_weight {
    type: number
    sql: ${TABLE}.minorityBalanceWeight ;;
  }

  dimension: missing_build {
    type: string
    sql: ${TABLE}.missingBuild ;;
  }

  dimension: missing_group {
    type: string
    sql: ${TABLE}.missingGroup ;;
  }

  dimension: missing_room {
    type: string
    sql: ${TABLE}.missingRoom ;;
  }

  dimension: missing_teacher {
    type: string
    sql: ${TABLE}.missingTeacher ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: orange_multiple {
    type: string
    sql: ${TABLE}.orangeMultiple ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parentID ;;
  }

  dimension: period_display {
    type: string
    sql: ${TABLE}.periodDisplay ;;
  }

  dimension: special_ed_balance_weight {
    type: number
    sql: ${TABLE}.specialEdBalanceWeight ;;
  }

  dimension: structure_id {
    type: number
    sql: ${TABLE}.structureID ;;
  }

  dimension: student_balance_weight {
    type: number
    sql: ${TABLE}.studentBalanceWeight ;;
  }

  dimension: teacher_consecutive_periods {
    type: number
    sql: ${TABLE}.teacherConsecutivePeriods ;;
  }

  dimension: teacher_max_courses {
    type: number
    sql: ${TABLE}.teacherMaxCourses ;;
  }

  dimension: teacher_max_periods {
    type: number
    sql: ${TABLE}.teacherMaxPeriods ;;
  }

  dimension: y_axis {
    type: string
    sql: ${TABLE}.yAxis ;;
  }

  measure: count {
    type: count
    drill_fields: [trial_id, name, roster.count, section.count]
  }
}
