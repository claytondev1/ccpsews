view: min_max_table {
  sql_table_name: dbo.MinMaxTable ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}.RecordDate ;;
  }

  dimension: report_type {
    type: string
    sql: ${TABLE}.ReportType ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.ValueType ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: maxenrollment {
    type: max
    sql: ${value} ;;


  }

  measure: minenrollment {
    type: min
    sql: ${value} ;;

  }
}
