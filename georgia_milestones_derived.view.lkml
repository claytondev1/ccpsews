view: georgia_milestones_derived {
  derived_table: {
    sql:

    select row_number() over (order by studentnumber) as pk
      ,*
    from (

      SELECT StudentNumber
        ,SysCode as district_code
        ,SchCode as school_code
        ,sysname as district_name
        ,schname as school_name
        ,testedgrade as grade
        ,cast(cast(stuDOBMonth as varchar) + '/' + cast(stuDOBday as varchar) + '/' + cast(studobyear as varchar) as date) as birth_date
        ,stugender as gender
        ,ethnicityrace as ethnicity
        ,ss_math
        ,achlevel_math as ach_level_math
        ,condSEM_math as cond_sem_math
        ,condsemhigh_math as cond_sem_high_math
        ,condsemlow_math as cond_sem_low_math
        ,nrt_np_math
        ,nrt_nprange_math
        ,nrt_nce_math
      FROM dbo.GMASEOG3to8

      union all

      SELECT StudentNumber
        ,SysCode as district_code
        ,SchCode as school_code
        ,sysname as district_name
        ,schname as school_name
        ,testedgrade as grade
        ,cast(cast(stuDOBMonth as varchar) + '/' + cast(stuDOBday as varchar) + '/' + cast(studobyear as varchar) as date) as birth_date
        ,stugender as gender
        ,ethnicityrace as ethnicity
        ,ss_math
        ,achlevel_math as ach_level_math
        ,condSEM_math as cond_sem_math
        ,condsemhigh_math as cond_sem_high_math
        ,condsemlow_math as cond_sem_low_math
        ,nrt_np_math
        ,nrt_nprange_math
        ,nrt_nce_math
      FROM dbo.GMASEOG3to8
      ) s
;;
  }
  dimension: pk {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.pk ;;
  }

  dimension: student_number {
    type: number
    sql: ${TABLE}.studentnumber ;;
  }

  dimension: district_code {}

  dimension: school_code {}

  dimension: district_name {}

  dimension: school_name {}

  dimension: grade {}

  dimension_group: birth_date {
    type: time
    timeframes: [
        date
        ,week
        ,month
        ,year
        ]
    sql: ${TABLE}.birth_date ;;
  }

  dimension: gender {}

  dimension: ethnicity {}

  dimension: ss_math {}

  dimension: ach_level_math {}

  dimension: cond_sem_math {}

  dimension: cond_sem_high_math {}

  dimension: cond_sem_low_math {}

  dimension: nrt_np_math {}

  dimension: nrt_nprange_math {}

  dimension: nrt_nce_math {}

  measure: avg_ss_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.ss_math  ;;
  }

  measure: avg_ach_level_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.ach_level_math  ;;
  }

  measure: avg_cond_sem_math{
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.cond_sem_math  ;;
  }

  measure: avg_cond_sem_high_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.cond_sem_high_math  ;;
  }

  measure: avg_cond_sem_low_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.cond_sem_low_math ;;
  }

  measure: avg_nrt_np_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.nrt_np_math  ;;
  }

  measure: avg_nrt_nprange_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.nrt_nprange_math  ;;
  }

  measure: avg_nrt_nce_math {
    type: average
    value_format_name: decimal_2
    sql: ${TABLE}.nrt_nce_math  ;;
  }



}
