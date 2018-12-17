view: roster {
  sql_table_name: dbo.roster ;;

  dimension: roster_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rosterID ;;
  }

  dimension: course_code {
    type: string
    sql: ${TABLE}.courseCode ;;
  }

  dimension: credit_recovery {
    type: string
    sql: ${TABLE}.creditRecovery ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.endDate ;;
  }

  dimension: eoc {
    type: string
    sql: ${TABLE}.eoc ;;
  }

  dimension: exit_reason {
    type: string
    sql: ${TABLE}.exitReason ;;
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

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: no_credit {
    type: string
    sql: ${TABLE}.noCredit ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: repeat_course {
    type: string
    sql: ${TABLE}.repeatCourse ;;
  }

  dimension: roster_guid {
    type: string
    sql: ${TABLE}.rosterGUID ;;
  }

  dimension: section_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sectionID ;;
  }

  dimension: special_code {
    type: string
    sql: ${TABLE}.specialCode ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.startDate ;;
  }

  dimension: state_use_flag {
    type: string
    sql: ${TABLE}.stateUseFlag ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: trial_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.trialID ;;
  }

  measure: count {
    type: count
    drill_fields: [roster_id, trial.trial_id, trial.name, section.section_id]
  }
}
