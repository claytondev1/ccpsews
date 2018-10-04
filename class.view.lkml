view: class {
  sql_table_name: dbo.Class ;;

  dimension: annual_lve_allowed {
    type: string
    sql: ${TABLE}.annualLveAllowed ;;
  }

  dimension: class_abrv {
    type: string
    sql: ${TABLE}.classAbrv ;;
  }

  dimension: class_code {
    type: string
    primary_key: yes
    sql: ${TABLE}.classCode ;;
  }

  dimension: is_teacher {
    type: yesno
    sql: ${class_code} LIKE '50%'  ;;
  }

  dimension: class_frequency {
    type: string
    sql: ${TABLE}.classFrequency ;;
  }

  dimension: class_title {
    type: string
    sql: ${TABLE}.classTitle ;;
  }

  dimension: comp_sched {
    type: string
    sql: ${TABLE}.compSched ;;
  }

  dimension: days_per_year {
    type: number
    sql: ${TABLE}.daysPerYear ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.fiscalYear ;;
  }

  dimension: hourly_flag {
    type: string
    sql: ${TABLE}.hourlyFlag  ;;

  }

  dimension: part_time_vs_full_time {
    type: string
    sql:CASE WHEN ${hourly_flag} = 'H' THEN 'Part Time' WHEN ${hourly_flag} = 'D' THEN 'Full Time' END ;;
  }

  dimension: hours_per_day {
    type: number
    sql: ${TABLE}.hoursPerDay ;;
  }

  dimension: overtime_allowed {
    type: string
    sql: ${TABLE}.overtimeAllowed ;;
  }

  dimension: retirement_flag {
    type: string
    sql: ${TABLE}.retirementFlag ;;
  }

  dimension: sick_lve_allowed {
    type: string
    sql: ${TABLE}.sickLveAllowed ;;
  }

  dimension: sub_allowed {
    type: string
    sql: ${TABLE}.subAllowed ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
