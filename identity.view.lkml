view: identity {
  sql_table_name: dbo."identity" ;;

  dimension: identity_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.identityID ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: birth_certificate {
    type: string
    sql: ${TABLE}.birthCertificate ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}.birthCity ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}.birthCountry ;;
  }

  dimension: birth_county {
    type: string
    sql: ${TABLE}.birthCounty ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}.birthState ;;
  }

  dimension: birth_state_no_sif {
    type: string
    sql: ${TABLE}.birthStateNoSIF ;;
  }

  dimension: birth_verification {
    type: string
    sql: ${TABLE}.birthVerification ;;
  }

  dimension: birth_verification_bie {
    type: string
    sql: ${TABLE}.birthVerificationBIE ;;
  }

  dimension: birthdate {
    type: string
    sql: ${TABLE}.birthdate ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: date_entered_state {
    type: string
    sql: ${TABLE}.dateEnteredState ;;
  }

  dimension: date_entered_us {
    type: string
    sql: ${TABLE}.dateEnteredUS ;;
  }

  dimension: date_entered_usschool {
    type: string
    sql: ${TABLE}.dateEnteredUSSchool ;;
  }

  dimension: district_id {
    type: number
    sql: ${TABLE}.districtID ;;
  }

  dimension: effective_date {
    type: string
    sql: ${TABLE}.effectiveDate ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: first_name_phonetic {
    type: string
    sql: ${TABLE}.firstNamePhonetic ;;
  }

  dimension: foreign_language_proficiency {
    type: string
    sql: ${TABLE}.foreignLanguageProficiency ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: hispanic_ethnicity {
    type: string
    sql: ${TABLE}.hispanicEthnicity ;;
  }

  dimension: home_primary_language {
    type: string
    sql: ${TABLE}.homePrimaryLanguage ;;
  }

  dimension: home_primary_language_bie {
    type: string
    sql: ${TABLE}.homePrimaryLanguageBIE ;;
  }

  dimension: home_secondary_language_bie {
    type: string
    sql: ${TABLE}.homeSecondaryLanguageBIE ;;
  }

  dimension: identity_guid {
    type: string
    sql: ${TABLE}.identityGUID ;;
  }

  dimension: immigrant {
    type: string
    sql: ${TABLE}.immigrant ;;
  }

  dimension: language_alt {
    type: string
    sql: ${TABLE}.languageAlt ;;
  }

  dimension: language_alt2 {
    type: string
    sql: ${TABLE}.languageAlt2 ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: last_name_phonetic {
    type: string
    sql: ${TABLE}.lastNamePhonetic ;;
  }

  dimension: legacy_key {
    type: string
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: legal_first_name {
    type: string
    sql: ${TABLE}.legalFirstName ;;
  }

  dimension: legal_gender {
    type: string
    sql: ${TABLE}.legalGender ;;
  }

  dimension: legal_last_name {
    type: string
    sql: ${TABLE}.legalLastName ;;
  }

  dimension: legal_middle_name {
    type: string
    sql: ${TABLE}.legalMiddleName ;;
  }

  dimension: legal_suffix {
    type: string
    sql: ${TABLE}.legalSuffix ;;
  }

  dimension: literacy_language {
    type: string
    sql: ${TABLE}.literacyLanguage ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middleName ;;
  }

  dimension: modified_by_id {
    type: number
    sql: ${TABLE}.modifiedByID ;;
  }

  dimension: modified_date {
    type: string
    sql: ${TABLE}.modifiedDate ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}.originCountry ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: race_ethnicity {
    type: string
    sql: ${TABLE}.raceEthnicity ;;
  }

  dimension: race_ethnicity_determination {
    type: string
    sql: ${TABLE}.raceEthnicityDetermination ;;
  }

  dimension: race_ethnicity_fed {
    type: string
    sql: ${TABLE}.raceEthnicityFed ;;
  }

  dimension: refugee {
    type: string
    sql: ${TABLE}.refugee ;;
  }

  dimension: ssn {
    type: string
    sql: ${TABLE}.ssn ;;
  }

  dimension: state_hispanic_ethnicity {
    type: string
    sql: ${TABLE}.stateHispanicEthnicity ;;
  }

  dimension: suffix {
    type: string
    sql: ${TABLE}.suffix ;;
  }

  dimension: us_citizen {
    type: string
    sql: ${TABLE}.usCitizen ;;
  }

  dimension: visa_type {
    type: string
    sql: ${TABLE}.visaType ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      identity_id,
      last_name,
      first_name,
      middle_name,
      legal_first_name,
      legal_last_name,
      legal_middle_name
    ]
  }
}
