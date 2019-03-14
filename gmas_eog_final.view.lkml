view: gmas_eog_final {
#   sql_table_name: dbo.GMASEOGFinal ;;
derived_table: {
  sql: select g.*
        ,row_number() over (order by SchCode) as pk
      from dbo.GMASEOGFinal g
      ;;
}

  dimension: pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pk  ;;
  }

  parameter: achievement_level_type {
    type: unquoted

    allowed_value: {
      label: "ELA"
      value: "ela"
    }

    allowed_value: {
      label: "Math"
      value: "math"
    }

    allowed_value: {
      label: "Science"
      value: "sci"
    }

    allowed_value: {
      label: "Social Studies"
      value: "soc"
    }

  }

  dimension: acheivement_level {
    type: string
    sql: case
            when {% parameter achievement_level_type %} = 'ela'
            then ${achlevel_ela}
            when {% parameter achievement_level_type %} = 'math'
            then ${achlevel_math}
            when {% parameter achievement_level_type %} = 'sci'
            then ${achlevel_sci}
            when {% parameter achievement_level_type %} = 'soc'
            then ${achlevel_soc}
          else ${achlevel_ela}
          end



            ;;
  }


  dimension: achlevel_ela {
    type: string
    sql:
    case
            when ${TABLE}.ACHLevel_ELA = '1'
            then 'Beginning Learner'
            when ${TABLE}.ACHLevel_ELA = '2'
            then 'Developing Learner'
            when ${TABLE}.ACHLevel_ELA = '3'
            then 'Proficient Learner'
            when ${TABLE}.ACHLevel_ELA = '4'
            then 'Distinguished Learner'
        else null
        end ;;
  }

  dimension: achlevel_math {
    type: string
    sql:
        case
            when ${TABLE}.ACHLevel_Math = '1'
            then 'Beginning Learner'
            when ${TABLE}.ACHLevel_Math = '2'
            then 'Developing Learner'
            when ${TABLE}.ACHLevel_Math = '3'
            then 'Proficient Learner'
            when ${TABLE}.ACHLevel_Math = '4'
            then 'Distinguished Learner'
        else null
        end
;;
  }

  dimension: achlevel_sci {
    type: string
    sql:

    case
            when ${TABLE}.ACHLevel_Sci = '1'
            then 'Beginning Learner'
            when ${TABLE}.ACHLevel_Sci = '2'
            then 'Developing Learner'
            when ${TABLE}.ACHLevel_Sci = '3'
            then 'Proficient Learner'
            when ${TABLE}.ACHLevel_Sci = '4'
            then 'Distinguished Learner'
        else null
        end  ;;
  }

  dimension: achlevel_soc {
    type: string
    sql:

    case
            when ${TABLE}.ACHLevel_Soc = '1'
            then 'Beginning Learner'
            when ${TABLE}.ACHLevel_Soc = '2'
            then 'Developing Learner'
            when ${TABLE}.ACHLevel_Soc = '3'
            then 'Proficient Learner'
            when ${TABLE}.ACHLevel_Soc = '4'
            then 'Distinguished Learner'
        else null
        end
         ;;
  }

  dimension: cond_sem_ela {
    type: string
    sql: ${TABLE}.CondSEM_ELA ;;
  }

  dimension: cond_sem_math {
    type: string
    sql: ${TABLE}.CondSEM_Math ;;
  }

  dimension: cond_sem_sci {
    type: string
    sql: ${TABLE}.CondSEM_Sci ;;
  }

  dimension: cond_sem_soc {
    type: string
    sql: ${TABLE}.CondSEM_Soc ;;
  }

  dimension: cond_semhigh_ela {
    type: string
    sql: ${TABLE}.CondSEMHigh_ELA ;;
  }

  dimension: cond_semhigh_math {
    type: string
    sql: ${TABLE}.CondSEMHigh_Math ;;
  }

  dimension: cond_semhigh_sci {
    type: string
    sql: ${TABLE}.CondSEMHigh_Sci ;;
  }

  dimension: cond_semhigh_soc {
    type: string
    sql: ${TABLE}.CondSEMHigh_Soc ;;
  }

  dimension: cond_semlow_ela {
    type: string
    sql: ${TABLE}.CondSEMLow_ELA ;;
  }

  dimension: cond_semlow_math {
    type: string
    sql: ${TABLE}.CondSEMLow_Math ;;
  }

  dimension: cond_semlow_sci {
    type: string
    sql: ${TABLE}.CondSEMLow_Sci ;;
  }

  dimension: cond_semlow_soc {
    type: string
    sql: ${TABLE}.CondSEMLow_Soc ;;
  }

  dimension: ethnicity_race {
    type: number
    sql: ${TABLE}.EthnicityRace ;;
  }

  dimension: extwrt1_cond_code {
    type: string
    sql: ${TABLE}.EXTWRT1CondCode ;;
  }

  dimension: extwrt1_score {
    type: string
    sql: ${TABLE}.EXTWRT1Score ;;
  }

  dimension: extwrt2_cond_code {
    type: string
    sql: ${TABLE}.EXTWRT2CondCode ;;
  }

  dimension: extwrt2_score {
    type: string
    sql: ${TABLE}.EXTWRT2Score ;;
  }

  dimension: extwrtgenre {
    type: string
    sql: ${TABLE}.EXTWRTGenre ;;
  }

  dimension: filler {
    type: string
    sql: ${TABLE}.Filler ;;
  }

  dimension: lexile {
    type: string
    sql: ${TABLE}.Lexile ;;
  }

  dimension: lexile_high {
    type: string
    sql: ${TABLE}.LexileHigh ;;
  }

  dimension: lexile_l {
    type: string
    sql: ${TABLE}.LexileL ;;
  }

  dimension: lexile_low {
    type: string
    sql: ${TABLE}.LexileLow ;;
  }

  dimension: mastery_category_dom1_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_ELA ;;
  }

  dimension: mastery_category_dom1_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Math ;;
  }

  dimension: mastery_category_dom1_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Sci ;;
  }

  dimension: mastery_category_dom1_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom1_Soc ;;
  }

  dimension: mastery_category_dom2_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_ELA ;;
  }

  dimension: mastery_category_dom2_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Math ;;
  }

  dimension: mastery_category_dom2_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Sci ;;
  }

  dimension: mastery_category_dom2_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom2_Soc ;;
  }

  dimension: mastery_category_dom3_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Math ;;
  }

  dimension: mastery_category_dom3_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Sci ;;
  }

  dimension: mastery_category_dom3_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom3_Soc ;;
  }

  dimension: mastery_category_dom4_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Math ;;
  }

  dimension: mastery_category_dom4_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Sci ;;
  }

  dimension: mastery_category_dom4_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom4_Soc ;;
  }

  dimension: mastery_category_dom5_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Math ;;
  }

  dimension: mastery_category_dom5_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Sci ;;
  }

  dimension: mastery_category_dom5_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom5_Soc ;;
  }

  dimension: mastery_category_dom6_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Math ;;
  }

  dimension: mastery_category_dom6_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Sci ;;
  }

  dimension: mastery_category_dom6_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom6_Soc ;;
  }

  dimension: mastery_category_dom7_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Math ;;
  }

  dimension: mastery_category_dom7_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Sci ;;
  }

  dimension: mastery_category_dom7_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom7_Soc ;;
  }

  dimension: mastery_category_dom8_ela {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_ELA ;;
  }

  dimension: mastery_category_dom8_math {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Math ;;
  }

  dimension: mastery_category_dom8_sci {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Sci ;;
  }

  dimension: mastery_category_dom8_soc {
    type: string
    sql: ${TABLE}.MasteryCategoryDom8_Soc ;;
  }

  dimension: narrwrtcond_code {
    type: string
    sql: ${TABLE}.NARRWRTCondCode ;;
  }

  dimension: narrwrtscore {
    type: string
    sql: ${TABLE}.NARRWRTScore ;;
  }

  dimension: nrt_nce_ela {
    type: string
    sql: ${TABLE}.NRT_NCE_ELA ;;
  }

  dimension: nrt_nce_math {
    type: string
    sql: ${TABLE}.NRT_NCE_Math ;;
  }

  dimension: nrt_nce_sci {
    type: string
    sql: ${TABLE}.NRT_NCE_Sci ;;
  }

  dimension: nrt_nce_soc {
    type: string
    sql: ${TABLE}.NRT_NCE_Soc ;;
  }

  dimension: nrt_np_ela {
    type: string
    sql: ${TABLE}.NRT_NP_ELA ;;
  }

  dimension: nrt_np_math {
    type: string
    sql: ${TABLE}.NRT_NP_Math ;;
  }

  dimension: nrt_np_sci {
    type: string
    sql: ${TABLE}.NRT_NP_Sci ;;
  }

  dimension: nrt_np_soc {
    type: string
    sql: ${TABLE}.NRT_NP_Soc ;;
  }

  dimension: nrt_nprange_ela {
    type: string
    sql: ${TABLE}.NRT_NPRange_ELA ;;
  }

  dimension: nrt_nprange_math {
    type: string
    sql: ${TABLE}.NRT_NPRange_Math ;;
  }

  dimension: nrt_nprange_sci {
    type: string
    sql: ${TABLE}.NRT_NPRange_Sci ;;
  }

  dimension: nrt_nprange_soc {
    type: string
    sql: ${TABLE}.NRT_NPRange_Soc ;;
  }

  dimension: reading_status {
    type: string
    sql: ${TABLE}.ReadingStatus ;;
  }

  dimension: sch_add {
    type: string
    sql: ${TABLE}.SchAdd ;;
  }

  dimension: sch_code {
    type: string
    sql: ${TABLE}.SchCode ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: ss_ela {
    type: string
    sql: ${TABLE}.SS_ELA ;;
  }

  dimension: ss_math {
    type: string
    sql: ${TABLE}.SS_Math ;;
  }

  dimension: ss_sci {
    type: string
    sql: ${TABLE}.SS_Sci ;;
  }

  dimension: ss_soc {
    type: string
    sql: ${TABLE}.SS_Soc ;;
  }

  dimension: stretch_band {
    type: string
    sql: ${TABLE}.StretchBand ;;
  }

  dimension: stu_gender {
    type: string
    sql: ${TABLE}.StuGender ;;
  }

  dimension: sys_code {
    type: number
    sql: ${TABLE}.SysCode ;;
  }

  dimension: sys_name {
    type: string
    sql: ${TABLE}.SysName ;;
  }

  dimension: test_admin {
    type: string
    sql: ${TABLE}.TestAdmin ;;
  }

  dimension: tested_grade {
    type: string
    sql: ${TABLE}.TestedGrade ;;
  }

#######################
# MEASURES            #
#######################


  measure: number_of_beginning_ela_learners {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${pk} ;;
    filters: {
      field: achlevel_ela
      value: "Beginning Learner"
    }
  }

  measure: number_of_beginning_math_learners {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${pk} ;;
    filters: {
      field: achlevel_math
      value: "Beginning Learner"
    }
  }

  measure: number_of_beginning_sci_learners {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${pk} ;;
    filters: {
      field: achlevel_sci
      value: "Beginning Learner"
    }
  }

  measure: number_of_beginning_soc_learners {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${pk} ;;
    filters: {
      field: achlevel_soc
      value: "Beginning Learner"
    }
  }

  measure: beginning_learners {
    label: "{% parameter achievement_level_type %} learners"
    type: number
    value_format_name: decimal_0
    sql:
      {% if achievement_level_type._is_filtered %}
          {% if achievement_level_type._parameter_value == "ela" %}
             ${number_of_beginning_ela_learners}
          {% elsif achievement_level_type._parameter_value == "math" %}
            ${number_of_beginning_math_learners}
          {% elsif achievement_level_type._parameter_value == "sci" %}
            ${number_of_beginning_sci_learners}
          {% elsif achievement_level_type._parameter_value == "soc" %}
            ${number_of_beginning_soc_learners}
          {% else %}
            ${number_of_beginning_ela_learners}
          {% endif %}
      {% else %}
          ${number_of_beginning_ela_learners}
      {% endif %}
          ;;
  }


  measure: count {
    type: count
    drill_fields: [sys_name, sch_name]
  }
}
