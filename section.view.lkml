view: section {
  sql_table_name: dbo.Section ;;

  dimension: section_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.sectionID ;;
  }

  dimension: adultcount {
    type: string
    sql: ${TABLE}.adultcount ;;
  }

  dimension: alt_school_code {
    type: string
    sql: ${TABLE}.altSchoolCode ;;
  }

  dimension: alt_system_code {
    type: string
    sql: ${TABLE}.altSystemCode ;;
  }

  dimension: alternative_ed {
    type: string
    sql: ${TABLE}.alternativeEd ;;
  }

  dimension: categories_push_time_stamp {
    type: string
    sql: ${TABLE}.categoriesPushTimeStamp ;;
  }

  dimension: class_met {
    type: string
    sql: ${TABLE}.classMet ;;
  }

  dimension: class_type {
    type: string
    sql: ${TABLE}.classType ;;
  }

  dimension: competency_based {
    type: string
    sql: ${TABLE}.competencyBased ;;
  }

  dimension: composites_push_time_stamp {
    type: string
    sql: ${TABLE}.compositesPushTimeStamp ;;
  }

  dimension: content_completer {
    type: string
    sql: ${TABLE}.contentCompleter ;;
  }

  dimension: course_id {
    type: number
    sql: ${TABLE}.courseID ;;
  }

  dimension: credit_recovery {
    type: string
    sql: ${TABLE}.creditRecovery ;;
  }

  dimension: distance_code {
    type: string
    sql: ${TABLE}.distanceCode ;;
  }

  dimension: ed_fi_term_type {
    type: string
    sql: ${TABLE}.edFiTermType ;;
  }

  dimension: enrollment_location {
    type: string
    sql: ${TABLE}.enrollmentLocation ;;
  }

  dimension: external_lmsexclude {
    type: string
    sql: ${TABLE}.externalLMSExclude ;;
  }

  dimension: gifted_content_area {
    type: string
    sql: ${TABLE}.giftedContentArea ;;
  }

  dimension: gifted_delivery {
    type: string
    sql: ${TABLE}.giftedDelivery ;;
  }

  dimension: grade_calc_push_time_stamp {
    type: string
    sql: ${TABLE}.gradeCalcPushTimeStamp ;;
  }

  dimension: hide_standards_on_portal {
    type: string
    sql: ${TABLE}.hideStandardsOnPortal ;;
  }

  dimension: highly_qualified {
    type: string
    sql: ${TABLE}.highlyQualified ;;
  }

  dimension: homeroom_section {
    type: string
    sql: ${TABLE}.homeroomSection ;;
  }

  dimension: instructional_setting {
    type: string
    sql: ${TABLE}.instructionalSetting ;;
  }

  dimension: instructional_time {
    type: number
    sql: ${TABLE}.instructionalTime ;;
  }

  dimension: legacy_key {
    type: number
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legacy_key_k12_essentials {
    type: number
    sql: ${TABLE}.legacyKeyK12Essentials ;;
  }

  dimension: legacy_key_sc {
    type: number
    sql: ${TABLE}.legacyKeySC ;;
  }

  dimension: lock {
    type: string
    sql: ${TABLE}.lock ;;
  }

  dimension: lock_build {
    type: string
    sql: ${TABLE}.lockBuild ;;
  }

  dimension: lock_roster {
    type: string
    sql: ${TABLE}.lockRoster ;;
  }

  dimension: lunch_id {
    type: number
    sql: ${TABLE}.lunchID ;;
  }

  dimension: lunchcount {
    type: string
    sql: ${TABLE}.lunchcount ;;
  }

  dimension: marking_period {
    type: string
    sql: ${TABLE}.markingPeriod ;;
  }

  dimension: max_students {
    type: number
    sql: ${TABLE}.maxStudents ;;
  }

  dimension: medium_of_instruction {
    type: string
    sql: ${TABLE}.mediumOfInstruction ;;
  }

  dimension: milkcount {
    type: string
    sql: ${TABLE}.milkcount ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: msix_code {
    type: string
    sql: ${TABLE}.msixCode ;;
  }

  dimension: multiple_teacher_code {
    type: string
    sql: ${TABLE}.multipleTeacherCode ;;
  }

  dimension: non_hqt_explanation {
    type: string
    sql: ${TABLE}.nonHqtExplanation ;;
  }

  dimension: non_hqt_reason {
    type: string
    sql: ${TABLE}.nonHqtReason ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }

  dimension: parapros {
    type: number
    sql: ${TABLE}.parapros ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.program ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }

  dimension: pull_course {
    type: string
    sql: ${TABLE}.pullCourse ;;
  }

  dimension: pull_date {
    type: string
    sql: ${TABLE}.pullDate ;;
  }

  dimension: push_person_id {
    type: number
    sql: ${TABLE}.pushPersonId ;;
  }

  dimension: room_id {
    type: number
    sql: ${TABLE}.roomID ;;
  }

  dimension: sched_group_id {
    type: number
    sql: ${TABLE}.schedGroupID ;;
  }

  dimension: section_guid {
    type: string
    sql: ${TABLE}.sectionGUID ;;
  }

  dimension: service_district {
    type: string
    sql: ${TABLE}.serviceDistrict ;;
  }

  dimension: service_school {
    type: string
    sql: ${TABLE}.serviceSchool ;;
  }

  dimension: session_number {
    type: string
    sql: ${TABLE}.sessionNumber ;;
  }

  dimension: session_type {
    type: string
    sql: ${TABLE}.sessionType ;;
  }

  dimension: skinny_seq {
    type: number
    sql: ${TABLE}.skinnySeq ;;
  }

  dimension: sped_area {
    type: string
    sql: ${TABLE}.spedArea ;;
  }

  dimension: teacher_display {
    type: string
    sql: ${TABLE}.teacherDisplay ;;
  }

  dimension: teacher_person_id {
    type: number
    sql: ${TABLE}.teacherPersonID ;;
  }

  dimension: teachingmethod {
    type: string
    sql: ${TABLE}.teachingmethod ;;
  }

  dimension: term_type {
    type: string
    sql: ${TABLE}.termType ;;
  }

  dimension: transcript_field6 {
    type: string
    sql: ${TABLE}.transcriptField6 ;;
  }

  dimension: transcript_field7 {
    type: string
    sql: ${TABLE}.transcriptField7 ;;
  }

  dimension: trial_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trialID ;;
  }

  dimension: validate_assignments {
    type: string
    sql: ${TABLE}.validateAssignments ;;
  }

  measure: count {
    type: count
    drill_fields: [section_id, trial.trial_id, trial.name, roster.count]
  }
}
