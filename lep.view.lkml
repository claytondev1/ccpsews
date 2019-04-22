view: lep {
  sql_table_name: dbo.Lep ;;

  dimension: lep_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.lepID ;;
  }

  dimension: comments {
    hidden: yes
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: district_id {
    hidden: yes
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: elpa_tier {
    hidden: yes
    type: string
    sql: ${TABLE}.elpaTier ;;
  }

  dimension: exit_date {
    hidden: yes
    type: string
    sql: ${TABLE}.exitDate ;;
  }

  dimension: exit_reason {
    hidden: yes
    type: string
    sql: ${TABLE}.exitReason ;;
  }

  dimension: expected_exit_date {
    hidden: yes
    type: string
    sql: ${TABLE}.expectedExitDate ;;
  }

  dimension: first_year_monitoring {
    hidden: yes
    type: string
    sql: ${TABLE}.firstYearMonitoring ;;
  }

  dimension: fourth_year_monitoring {
    hidden: yes
    type: string
    sql: ${TABLE}.fourthYearMonitoring ;;
  }

  dimension: identified_date {
    type: string
    sql: ${TABLE}.identifiedDate ;;
  }

  dimension: interrupted_schooling {
    hidden: yes
    type: string
    sql: ${TABLE}.interruptedSchooling ;;
  }

  dimension: lep_guid {
    hidden: yes
    type: string
    sql: ${TABLE}.lepGUID ;;
  }

  dimension: modified_by_id {
    hidden: yes
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    hidden: yes
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: nep {
    hidden: yes
    type: string
    sql: ${TABLE}.nep ;;
  }

  dimension: parent_declined {
    hidden: yes
    type: string
    sql: ${TABLE}.parentDeclined ;;
  }

  dimension: parent_declined_date {
    hidden: yes
    type: string
    sql: ${TABLE}.parentDeclinedDate ;;
  }

  dimension: parent_notified_date {
    hidden: yes
    type: string
    sql: ${TABLE}.parentNotifiedDate ;;
  }

  dimension: person_id {
    hidden: yes
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: program_status {
    hidden: yes
    type: string
    sql: ${TABLE}.programStatus ;;
  }

  dimension: is_lep {
    label: "Is LEP"
    type: yesno
    sql: ${program_status} = 'LEP' ;;
  }

  dimension: second_year_monitoring {
    hidden: yes
    type: string
    sql: ${TABLE}.secondYearMonitoring ;;
  }

  dimension: slife {
    hidden: yes
    type: string
    sql: ${TABLE}.slife ;;
  }

  dimension: slife_identified_date {
    hidden: yes
    type: string
    sql: ${TABLE}.slifeIdentifiedDate ;;
  }

  dimension: third_year_monitoring {
    hidden: yes
    type: string
    sql: ${TABLE}.thirdYearMonitoring ;;
  }

  dimension: years_lep {
    type: number
    sql: ${TABLE}.yearsLEP ;;
  }

  measure: count_lep_enrollment { #This measure is displayed in field picker
    label: "Count LEP Enrollment"
    type: count
    drill_fields: [drill_to_school*]
    filters: {
      field: is_lep
      value: "Yes"
    }
  }

  # Measure based on another measure can be type: number
  measure: count_lep_enrollment_drill_to_student {#This measure is hidden in field picker, only shows in drill
    type: number
    drill_fields: [drill_to_student*]
    sql: ${count_lep_enrollment} ;;
    hidden: yes
  }

  set: drill_to_school {
    fields: [
      school.name, count_lep_enrollment_drill_to_student
    ]
  }

  set: drill_to_student {
    fields: [
      person.student_number
      , identity.first_name
      , identity.last_name
      , identity.home_primary_language
      , enrollment.grade
      , identity.birth_country_name
    ]
  }
}
