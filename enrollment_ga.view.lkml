
view: enrollment_ga {
  sql_table_name: dbo.EnrollmentGA ;;

  dimension: alt_program_end_date {
    type: string
    sql: ${TABLE}.altProgramEndDate ;;
  }

  dimension: alt_program_start_date {
    type: string
    sql: ${TABLE}.altProgramStartDate ;;
  }

  dimension: alt_system_code {
    type: string
    sql: ${TABLE}.altSystemCode ;;
  }

  dimension: alternate_math_sequence {
    type: string
    sql: ${TABLE}.alternateMathSequence ;;
  }

  dimension: alternative_count {
    type: number
    sql: ${TABLE}.alternativeCount ;;
  }

  dimension: alternative_days {
    type: number
    sql: ${TABLE}.alternativeDays ;;
  }

  dimension: alternative_fte {
    type: string
    sql: ${TABLE}.alternativeFTE ;;
  }

  dimension: alternative_program {
    type: string
    sql: ${TABLE}.alternativeProgram ;;
  }

  dimension: alternative_reason {
    type: string
    sql: ${TABLE}.alternativeReason ;;
  }

  dimension: alternative_school {
    type: string
    sql: ${TABLE}.alternativeSchool ;;
  }

  dimension: area_served {
    type: string
    sql: ${TABLE}.areaServed ;;
  }

  dimension: babies_cant_wait_notification {
    type: string
    sql: ${TABLE}.babiesCantWaitNotification ;;
  }

  dimension: bi_lit_language1 {
    type: string
    sql: ${TABLE}.biLitLanguage1 ;;
  }

  dimension: bi_lit_language2 {
    type: string
    sql: ${TABLE}.biLitLanguage2 ;;
  }

  dimension: bi_lit_language3 {
    type: string
    sql: ${TABLE}.biLitLanguage3 ;;
  }

  dimension: calendar_id {
    type: number
    sql: ${TABLE}.calendarID ;;
  }

  dimension: capstone_project {
    type: string
    sql: ${TABLE}.capstoneProject ;;
  }

  dimension: ccae {
    type: string
    sql: ${TABLE}.ccae ;;
  }

  dimension: cti {
    type: string
    sql: ${TABLE}.cti ;;
  }

  dimension: dli {
    type: string
    sql: ${TABLE}.dli ;;
  }

  dimension: dual_enrollment_type1 {
    type: string
    sql: ${TABLE}.dualEnrollmentType1 ;;
  }

  dimension: dual_enrollment_type2 {
    type: string
    sql: ${TABLE}.dualEnrollmentType2 ;;
  }

  dimension: dual_enrollment_type3 {
    type: string
    sql: ${TABLE}.dualEnrollmentType3 ;;
  }

  dimension: dual_enrollment_type4 {
    type: string
    sql: ${TABLE}.dualEnrollmentType4 ;;
  }

  dimension: dual_enrollment_type5 {
    type: string
    sql: ${TABLE}.dualEnrollmentType5 ;;
  }

  dimension: dual_enrollment_type6 {
    type: string
    sql: ${TABLE}.dualEnrollmentType6 ;;
  }

  dimension: eip {
    type: string
    sql: ${TABLE}.eip ;;
  }

  dimension: ell_low_schooled {
    type: string
    sql: ${TABLE}.ellLowSchooled ;;
  }

  dimension: ell_monitor_basis {
    type: string
    sql: ${TABLE}.ellMonitorBasis ;;
  }

  dimension: ell_monitor_year {
    type: string
    sql: ${TABLE}.ellMonitorYear ;;
  }

  dimension: enrollment_id {
    type: number
    sql: ${TABLE}.enrollmentID ;;
    primary_key: yes
  }

  dimension: enrollment_location1 {
    type: string
    sql: ${TABLE}.enrollmentLocation1 ;;
  }

  dimension: enrollment_location2 {
    type: string
    sql: ${TABLE}.enrollmentLocation2 ;;
  }

  dimension: enrollment_location3 {
    type: string
    sql: ${TABLE}.enrollmentLocation3 ;;
  }

  dimension: enrollment_location4 {
    type: string
    sql: ${TABLE}.enrollmentLocation4 ;;
  }

  dimension: enrollment_location5 {
    type: string
    sql: ${TABLE}.enrollmentLocation5 ;;
  }

  dimension: enrollment_location6 {
    type: string
    sql: ${TABLE}.enrollmentLocation6 ;;
  }

  dimension: eog_test_type_override {
    type: string
    sql: ${TABLE}.eogTestTypeOverride ;;
  }

  dimension: esol {
    type: number
    sql: ${TABLE}.esol ;;
  }

  dimension: esol_itinerant {
    type: string
    sql: ${TABLE}.esolItinerant ;;
  }

  dimension: esol_non_itinerant {
    type: string
    sql: ${TABLE}.esolNonItinerant ;;
  }

  dimension: extended_year {
    type: string
    sql: ${TABLE}.extendedYear ;;
  }

  dimension: fiscal_agent1 {
    type: string
    sql: ${TABLE}.fiscalAgent1 ;;
  }

  dimension: fiscal_agent2 {
    type: string
    sql: ${TABLE}.fiscalAgent2 ;;
  }

  dimension: fiscal_agent3 {
    type: string
    sql: ${TABLE}.fiscalAgent3 ;;
  }

  dimension: fiscal_agent4 {
    type: string
    sql: ${TABLE}.fiscalAgent4 ;;
  }

  dimension: fiscal_agent5 {
    type: string
    sql: ${TABLE}.fiscalAgent5 ;;
  }

  dimension: fiscal_agent6 {
    type: string
    sql: ${TABLE}.fiscalAgent6 ;;
  }

  dimension: fte_comments {
    type: string
    sql: ${TABLE}.fteComments ;;
  }

  dimension: fte_program_code1 {
    type: string
    sql: ${TABLE}.fteProgramCode1 ;;
  }

  dimension: fte_program_code2 {
    type: string
    sql: ${TABLE}.fteProgramCode2 ;;
  }

  dimension: fte_program_code3 {
    type: string
    sql: ${TABLE}.fteProgramCode3 ;;
  }

  dimension: fte_program_code4 {
    type: string
    sql: ${TABLE}.fteProgramCode4 ;;
  }

  dimension: fte_program_code5 {
    type: string
    sql: ${TABLE}.fteProgramCode5 ;;
  }

  dimension: fte_program_code6 {
    type: string
    sql: ${TABLE}.fteProgramCode6 ;;
  }

  dimension: gaa_flag {
    type: string
    sql: ${TABLE}.gaaFlag ;;
  }

  dimension: gifted_delivery_model1 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel1 ;;
  }

  dimension: gifted_delivery_model2 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel2 ;;
  }

  dimension: gifted_delivery_model3 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel3 ;;
  }

  dimension: gifted_delivery_model4 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel4 ;;
  }

  dimension: gifted_delivery_model5 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel5 ;;
  }

  dimension: gifted_delivery_model6 {
    type: string
    sql: ${TABLE}.giftedDeliveryModel6 ;;
  }

  dimension: gifted_eligibility {
    type: string
    sql: ${TABLE}.giftedEligibility ;;
  }

  dimension: gifted_referral {
    type: string
    sql: ${TABLE}.giftedReferral ;;
  }

  dimension: gnet_segments {
    type: number
    sql: ${TABLE}.gnetSegments ;;
  }

  dimension: grad_program {
    type: string
    sql: ${TABLE}.gradProgram ;;
  }

  dimension: homeless_shelter {
    type: string
    sql: ${TABLE}.homelessShelter ;;
  }

  dimension: inclusion1 {
    type: string
    sql: ${TABLE}.inclusion1 ;;
  }

  dimension: inclusion2 {
    type: string
    sql: ${TABLE}.inclusion2 ;;
  }

  dimension: inclusion3 {
    type: string
    sql: ${TABLE}.inclusion3 ;;
  }

  dimension: inclusion4 {
    type: string
    sql: ${TABLE}.inclusion4 ;;
  }

  dimension: inclusion5 {
    type: string
    sql: ${TABLE}.inclusion5 ;;
  }

  dimension: inclusion6 {
    type: string
    sql: ${TABLE}.inclusion6 ;;
  }

  dimension: itinerant {
    type: number
    sql: ${TABLE}.itinerant ;;
  }

  dimension: legacy_key {
    type: string
    sql: ${TABLE}.legacyKey ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.personID ;;
  }

  dimension: pre_kprogram_code {
    type: string
    sql: ${TABLE}.preKProgramCode ;;
  }

  dimension: program_type {
    type: string
    sql: ${TABLE}.programType ;;
  }

  dimension: remedial_education {
    type: string
    sql: ${TABLE}.remedialEducation ;;
  }

  dimension: resident_county {
    type: string
    sql: ${TABLE}.residentCounty ;;
  }

  dimension: resident_status {
    type: string
    sql: ${TABLE}.residentStatus ;;
  }

  dimension: school_override {
    type: string
    sql: ${TABLE}.schoolOverride ;;
  }

  dimension: section504_crct {
    type: string
    sql: ${TABLE}.section504CRCT ;;
  }

  dimension: section504_gkap {
    type: string
    sql: ${TABLE}.section504GKAP ;;
  }

  dimension: section504_hsgt {
    type: string
    sql: ${TABLE}.section504HSGT ;;
  }

  dimension: section504_writing {
    type: string
    sql: ${TABLE}.section504Writing ;;
  }

  dimension: section504eoc {
    type: string
    sql: ${TABLE}.section504eoc ;;
  }

  dimension: section504eog {
    type: string
    sql: ${TABLE}.section504eog ;;
  }

  dimension: section504gkids {
    type: string
    sql: ${TABLE}.section504gkids ;;
  }

  dimension: service_plan {
    type: string
    sql: ${TABLE}.servicePlan ;;
  }

  dimension: special_needs {
    type: string
    sql: ${TABLE}.specialNeeds ;;
  }

  dimension: sped_transition {
    type: string
    sql: ${TABLE}.spedTransition ;;
  }

  dimension: sst {
    type: string
    sql: ${TABLE}.sst ;;
  }

  dimension: supplemental_speech {
    type: number
    sql: ${TABLE}.supplementalSpeech ;;
  }

  dimension: swd_monitor_year {
    type: string
    sql: ${TABLE}.swdMonitorYear ;;
  }

  dimension: title1_applied_for_psc {
    type: string
    sql: ${TABLE}.title1AppliedForPSC ;;
  }

  dimension: title1_applied_for_ses {
    type: string
    sql: ${TABLE}.title1AppliedForSES ;;
  }

  dimension: title1_civics {
    type: string
    sql: ${TABLE}.title1Civics ;;
  }

  dimension: title1_counseling {
    type: string
    sql: ${TABLE}.title1Counseling ;;
  }

  dimension: title1_eligible_for_ses {
    type: string
    sql: ${TABLE}.title1EligibleForSES ;;
  }

  dimension: title1_english_ses {
    type: string
    sql: ${TABLE}.title1EnglishSES ;;
  }

  dimension: title1_environment {
    type: string
    sql: ${TABLE}.title1Environment ;;
  }

  dimension: title1_ged {
    type: string
    sql: ${TABLE}.title1GED ;;
  }

  dimension: title1_geography {
    type: string
    sql: ${TABLE}.title1Geography ;;
  }

  dimension: title1_health {
    type: string
    sql: ${TABLE}.title1Health ;;
  }

  dimension: title1_history {
    type: string
    sql: ${TABLE}.title1History ;;
  }

  dimension: title1_job_prep {
    type: string
    sql: ${TABLE}.title1JobPrep ;;
  }

  dimension: title1_math {
    type: string
    sql: ${TABLE}.title1Math ;;
  }

  dimension: title1_math_ses {
    type: string
    sql: ${TABLE}.title1MathSES ;;
  }

  dimension: title1_nutrition {
    type: string
    sql: ${TABLE}.title1Nutrition ;;
  }

  dimension: title1_offered_psc {
    type: string
    sql: ${TABLE}.title1OfferedPSC ;;
  }

  dimension: title1_offered_ses {
    type: string
    sql: ${TABLE}.title1OfferedSES ;;
  }

  dimension: title1_other {
    type: string
    sql: ${TABLE}.title1Other ;;
  }

  dimension: title1_reading {
    type: string
    sql: ${TABLE}.title1Reading ;;
  }

  dimension: title1_reading_ses {
    type: string
    sql: ${TABLE}.title1ReadingSES ;;
  }

  dimension: title1_received_ses {
    type: string
    sql: ${TABLE}.title1ReceivedSES ;;
  }

  dimension: title1_science {
    type: string
    sql: ${TABLE}.title1Science ;;
  }

  dimension: title1_science_ses {
    type: string
    sql: ${TABLE}.title1ScienceSES ;;
  }

  dimension: is_immigrant{
    type: yesno
    sql: ${TABLE}.title1SocialStudiesSES  = '1' ;;

  }

  dimension: title1_transportation {
    type: string
    sql: ${TABLE}.title1Transportation ;;
  }

  dimension: title3_parents_refused_service {
    type: string
    sql: ${TABLE}.title3ParentsRefusedService ;;
  }

  dimension: title_iiiserved {
    type: string
    sql: ${TABLE}.titleIIIServed ;;
  }

  dimension: transported {
    type: number
    sql: ${TABLE}.transported ;;
  }

  dimension: underage {
    type: string
    sql: ${TABLE}.underage ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
